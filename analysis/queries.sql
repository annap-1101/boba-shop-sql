-- Which core ingredients are currently below safety stock levels, and how many days of inventory do we have left before we run out?
WITH daily_burn_rate AS (
  SELECT
    pr.ingredient_id,
    (oi.quantity * pr.qty_required) / 30.0 AS avg_daily_usage
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  JOIN product_recipes pr ON oi.product_id = pr.product_id
  WHERE o.order_datetime >= NOW() - INTERVAL '30 days'
  GROUP BY pr.ingredient_id
)

SELECT
  ii.ingredient_name,
  ii.current_stock_qty,
  ii.safety_stock_qty,
  ii.reorder_point_qty,
  ii.unit_of_measure,
  ROUND(COALESCE(dbr.avg_daily_usage, 0), 2) AS avg_daily_usage
  CASE
    WHEN COALESCE(dbr.avg_daily_usage, 0) > 0
    THEN ROUND(ii.current_stock_qty / dbr.avg_daily_usage, 1)
    ELSE 999.0
  END AS days_supply_remaining,
  CASE
    WHEN ii.current_stock_qty <= ii.safety_stock_qty THEN 'LOW SUPPLY'
    WHEN ii.current_stock_qty <= ii.reorder_point_qty THEN 'CRITICAL: REORDER NEEDED'
    ELSE 'SUFFICIENT'
  END AS ingredient_stock_status
FROM inventory_items ii
LEFT JOIN daily_burn_rate dbr ON dbr.ingredient_id = ii.ingredient_id
ORDER BY days_supply_remaining ASC;

-- How much revenue are we losing each week due to expired or wasted perishable ingredients?
SELECT
  DATE_TRUNC('week', waste_timestamp)::DATE AS start_of_week,
  COUNT(waste_id), --number of throw outs
  ROUND(SUM(financial_loss_usd), 2) AS total_loss_usd,
  ROUND(AVG(financial_loss_usd, 2) AS avg_loss_per_incident
FROM waste_log
GROUP BY DATE_TRUNC('week', waste_timestamp)
ORDER BY start_of_week;

-- Which items cause the highest financial loss?
SELECT
  ii.ingredient_name
  ROUND(SUM(wl.financial_loss_usd, 2) AS loss
FROM waste_log wl
LEFT OUTER JOIN inventory_items ii
ON wl.ingredient_id = ii.ingredient_id
GROUP BY ii.ingredient_name
ORDER BY loss DESC;

-- Which specific raw ingredients experience the highest burn rate during peak weekend afternoon rushes (2:00-6:00PM)?
SELECT
  ii.ingredient_name,
  SUM(oi.quantity * pr.qty_required) AS total_usage
FROM orders o 
JOIN order_items oi
  ON o.order_id = oi.order_id
JOIN product_recipes pr
  ON oi.product_id = pr.product_id
JOIN inventory_items ii
  ON pr.ingredient_id = ii.ingredient_id
WHERE EXTRACT(ISODOW FROM order_datetime) IN (5, 6, 7)
AND EXTRACT(HOUR FROM order_datetime) BETWEEN 14 AND 17
GROUP BY ii.ingredient_name
ORDER BY total_usage DESC;

-- Which menu drinks have the highest and lowest profit margins when accounting for raw ingredient costs?
SELECT 
  p.product_name,
  ROUND(SUM(pr.qty_required * ii.cost_per_unit), 2) AS cogs,
  ROUND(p.price - ROUND(SUM(pr.qty_required * ii.cost_per_unit), 2)) AS drink_revenue,
  ROUND(((p.price - SUM(pr.qty_required * ii.cost_per_unit)) / p.price) * 100.0, 1) AS gross_margin
FROM products p
JOIN product_recipes pr
  ON p.product_id = pr.product_id
JOIN inventory_items ii
  ON pr.ingredient_id = ii.ingredient_id
GROUP BY p.product_name, p.product_id
ORDER BY gross_margin DESC;






