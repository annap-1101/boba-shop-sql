DO $$
DECLARE
    i INT;
    rand_product_id INT;
    rand_product_name VARCHAR;
    rand_price DECIMAL(5,2);
    generated_order_id INT;
    generated_item_id INT;
    order_ts TIMESTAMP;
    hour_val INT;
    is_weekend BOOLEAN;
    num_items INT;
    k INT;
BEGIN
    FOR i IN 1..1200 LOOP
        order_ts := NOW() - (random() * INTERVAL '365 days');
        is_weekend := EXTRACT(ISODOW FROM order_ts) IN (5, 6, 7);
        
        -- Rush hours
        IF random() < 0.70 THEN
            hour_val := floor(random() * 4) + 14; -- 2 PM - 6 PM
        ELSE
            hour_val := floor(random() * 7) + (CASE WHEN random() < 0.5 THEN 11 ELSE 18 END);
        END IF;
        
        order_ts := date_trunc('day', order_ts) + (hour_val * INTERVAL '1 hour') + (floor(random() * 60) * INTERVAL '1 minute');

        IF NOT is_weekend AND random() < 0.45 THEN
            CONTINUE;
        END IF;

        INSERT INTO orders (order_datetime) VALUES (order_ts) RETURNING order_id INTO generated_order_id;

        num_items := CASE WHEN random() < 0.75 THEN 1 WHEN random() < 0.95 THEN 2 ELSE 3 END;
        
        FOR k IN 1..num_items LOOP
            IF random() < 0.50 THEN
                SELECT product_id, price, product_name INTO rand_product_id, rand_price, rand_product_name
                FROM products 
                WHERE product_name IN ('Mango Pomelo (L)', 'Mango Slush (L)', 'Brown Sugar Bubble Milk (L)', 'Brown Sugar Bubble Milk Tea (L)', 'Jasmine Green Bubble Milk Tea (L)')
                ORDER BY random() LIMIT 1;
            ELSE
                SELECT product_id, price, product_name INTO rand_product_id, rand_price, rand_product_name
                FROM products ORDER BY random() LIMIT 1;
            END IF;

            INSERT INTO order_items (order_id, product_id, quantity, historical_price)
            VALUES (generated_order_id, rand_product_id, 1, rand_price)
            RETURNING order_item_id INTO generated_item_id;

            IF random() < 0.25 THEN
                INSERT INTO order_item_toppings (order_item_id, topping_id, quantity, customer_price_per_unit)
                VALUES (
                    generated_item_id, 
                    (SELECT topping_id FROM toppings ORDER BY random() LIMIT 1), 
                    1, 
                    0.99
                );
            END IF;
        END LOOP;
    END LOOP;
END $$;

– generate waste log

DO $$
DECLARE
    i INT;
    waste_date TIMESTAMP;
    rand_ingredient_id INT;
    rand_ingredient_name VARCHAR;
    unit_cost DECIMAL(8,4);
    wasted_qty DECIMAL(10,2);
    reason VARCHAR(100);
    loss_amount DECIMAL(8,2);
BEGIN
    -- Generate ~250 historical waste events over the last 365 days
    FOR i IN 1..250 LOOP
        -- Pick a random date/time near shop closing (10:00 PM - 11:00 PM)
        waste_date := date_trunc('day', NOW() - (random() * INTERVAL '365 days')) 
                      + (22 * INTERVAL '1 hour') 
                      + (floor(random() * 60) * INTERVAL '1 minute');

        -- Pick a random perishable or core ingredient
        SELECT ingredient_id, ingredient_name, cost_per_unit 
        INTO rand_ingredient_id, rand_ingredient_name, unit_cost
        FROM inventory_items 
        WHERE category IN ('Perishable', 'Core Ingredient')
        ORDER BY random() LIMIT 1;

        -- Assign realistic waste quantities and reasons based on ingredient type
        IF rand_ingredient_name LIKE '%Brewed%' THEN
            wasted_qty := floor(random() * 3000) + 1000; -- 1L to 4L of leftover brewed tea at night
            reason := 'End of Day Batch Disposal';
        ELSIF rand_ingredient_name LIKE '%Tapioca%' THEN
            wasted_qty := floor(random() * 1500) + 500;  -- 500g to 2kg of leftover cooked pearls
            reason := 'End of Day Texture Degradation';
        ELSIF rand_ingredient_name LIKE '%Milk%' THEN
            wasted_qty := floor(random() * 2000) + 500;  -- 500ml to 2.5L expired milk
            reason := 'Past Expiration Date';
        ELSE
            wasted_qty := floor(random() * 500) + 100;   -- Fruit purees or foams
            reason := CASE WHEN random() < 0.6 THEN 'Past Expiration Date' ELSE 'Spill / Preparation Error' END;
        END IF;

        loss_amount := ROUND(wasted_qty * unit_cost, 2);

        INSERT INTO waste_log (
            ingredient_id, 
            qty_wasted, 
            waste_reason, 
            waste_timestamp, 
            financial_loss_usd
        ) VALUES (
            rand_ingredient_id, 
            wasted_qty, 
            reason, 
            waste_date, 
            loss_amount
        );
    END LOOP;
END $$;

