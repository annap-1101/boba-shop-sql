– populate the point of sale tables

INSERT INTO toppings (topping_name, cost_per_unit) VALUES
('Regular Bubble', 0.15), ('Pearl Bubble', 0.15), ('Yogurt', 0.25), 
('Mango Chunks', 0.35), ('Strawberry Chunks', 0.35), ('Grapefruit Sacs', 0.30), 
('Cheese Foam', 0.25), ('Creme Brûlée', 0.30), ('Fresh Taro', 0.30), 
('Tofu Pudding', 0.20), ('Strawberry Jam', 0.20), ('Mango Jam', 0.20), 
('Oreo Crumbs', 0.15), ('Whipped Cream', 0.15), ('Red Bean', 0.15), 
('Milk Mochi', 0.25), ('Black Sesame', 0.20), ('Brown Sugar Bubble', 0.18), 
('Mango Popping Bubble', 0.22), ('Strawberry Popping Bubble', 0.22), 
('Lychee Jelly', 0.18), ('Milk Foam', 0.20), ('Black Sesame Mochi', 0.25), 
('Matcha Mochi', 0.25), ('Mashed Lemon', 0.15), ('Mashed Strawberry', 0.20), 
('Mashed Grapefruit', 0.20);

INSERT INTO products (product_name, category, price) VALUES
-- Fruit Slush
('Mango Slush (L)', 'Fruit Slush', 7.50), ('Black Grape Slush (L)', 'Fruit Slush', 7.50),
('Strawberry Slush (L)', 'Fruit Slush', 7.50), ('Grapefruit Slush (L)', 'Fruit Slush', 7.50),
('Dragonfruit Slush (L)', 'Fruit Slush', 7.50), ('Watermelon Slush (L)', 'Fruit Slush', 7.50),
('Pineapple Slush (L)', 'Fruit Slush', 7.50),
-- Yogurt Slush
('Yogurt Mango Slush (L)', 'Yogurt Slush', 7.50), ('Yogurt Strawberry Slush (L)', 'Yogurt Slush', 7.50),
-- Pomelo Slush
('Mango Pomelo (L)', 'Pomelo Slush', 7.50), ('Strawberry Pomelo (L)', 'Pomelo Slush', 7.50),
-- Thai Tea
('Thai Tea (M)', 'Thai Tea', 5.50), ('Thai Tea (L)', 'Thai Tea', 6.50),
('Cheese Foam Thai Tea (M)', 'Thai Tea', 5.50), ('Cheese Foam Thai Tea (L)', 'Thai Tea', 6.50),
('Creme Brûlée Thai Tea (M)', 'Thai Tea', 5.50), ('Creme Brûlée Thai Tea (L)', 'Thai Tea', 6.50),
-- Taro
('Fresh Taro Bubble Milk (M)', 'Taro', 5.50), ('Fresh Taro Bubble Milk (L)', 'Taro', 6.50),
('Fresh Taro Bubble Milk Tea (M)', 'Taro', 5.50), ('Fresh Taro Bubble Milk Tea (L)', 'Taro', 6.50),
('Fresh Taro Tofu Pudding Milk (M)', 'Taro', 5.50), ('Fresh Taro Tofu Pudding Milk (L)', 'Taro', 6.50),
('Fresh Taro Tofu Pudding Milk Tea (M)', 'Taro', 5.50), ('Fresh Taro Tofu Pudding Milk Tea (L)', 'Taro', 6.50),
('Classic Taro Bubble Milk (M)', 'Taro', 5.50), ('Classic Taro Bubble Milk (L)', 'Taro', 6.50),
-- Matcha
('Classic Uji Matcha (M)', 'Matcha', 5.50), ('Classic Uji Matcha (L)', 'Matcha', 6.50),
('Cheese Foam Matcha (M)', 'Matcha', 5.50), ('Cheese Foam Matcha (L)', 'Matcha', 6.50),
('Creme Brûlée Matcha (M)', 'Matcha', 5.50), ('Creme Brûlée Matcha (L)', 'Matcha', 6.50),
('Strawberry Matcha (M)', 'Matcha', 5.50), ('Strawberry Matcha (L)', 'Matcha', 6.50),
('Mango Matcha (M)', 'Matcha', 5.50), ('Mango Matcha (L)', 'Matcha', 6.50),
-- Milk Tea
('Classic Bubble Milk Tea (M)', 'Milk Tea', 5.50), ('Classic Bubble Milk Tea (L)', 'Milk Tea', 6.50),
('Four Season Oolong Milk Tea (M)', 'Milk Tea', 5.50), ('Four Season Oolong Milk Tea (L)', 'Milk Tea', 6.50),
('Oreo Milk Tea (M)', 'Milk Tea', 5.50), ('Oreo Milk Tea (L)', 'Milk Tea', 6.50),
('Red Bean Milk Tea (M)', 'Milk Tea', 5.50), ('Red Bean Milk Tea (L)', 'Milk Tea', 6.50),
('Jasmine Green Milk Tea (M)', 'Milk Tea', 5.50), ('Jasmine Green Milk Tea (L)', 'Milk Tea', 6.50),
('Creme Brûlée Milk Tea (M)', 'Milk Tea', 5.50), ('Creme Brûlée Milk Tea (L)', 'Milk Tea', 6.50),
-- Bubble Tea
('Jasmine Green Bubble Milk Tea (M)', 'Bubble Tea', 5.50), ('Jasmine Green Bubble Milk Tea (L)', 'Bubble Tea', 6.50),
('Rose Oolong Bubble Milk Tea (M)', 'Bubble Tea', 5.50), ('Rose Oolong Bubble Milk Tea (L)', 'Bubble Tea', 6.50),
('Peach Oolong Bubble Milk Tea (M)', 'Bubble Tea', 5.50), ('Peach Oolong Bubble Milk Tea (L)', 'Bubble Tea', 6.50),
('Osmanthus Oolong Bubble Milk Tea (M)', 'Bubble Tea', 5.50), ('Osmanthus Oolong Bubble Milk Tea (L)', 'Bubble Tea', 6.50),
('Four Season Oolong Bubble Milk Tea (M)', 'Bubble Tea', 5.50), ('Four Season Oolong Bubble Milk Tea (L)', 'Bubble Tea', 6.50),
-- Cheese Foam Tea
('Cheese Foam Jasmine Green Tea (M)', 'Cheese Foam Tea', 5.50), ('Cheese Foam Jasmine Green Tea (L)', 'Cheese Foam Tea', 6.50),
('Cheese Foam Rose Oolong Tea (M)', 'Cheese Foam Tea', 5.50), ('Cheese Foam Rose Oolong Tea (L)', 'Cheese Foam Tea', 6.50),
('Cheese Foam Peach Oolong Tea (M)', 'Cheese Foam Tea', 5.50), ('Cheese Foam Peach Oolong Tea (L)', 'Cheese Foam Tea', 6.50),
('Cheese Foam Osmanthus Oolong Tea (M)', 'Cheese Foam Tea', 5.50), ('Cheese Foam Osmanthus Oolong Tea (L)', 'Cheese Foam Tea', 6.50),
('Cheese Foam Four Season Oolong Tea (M)', 'Cheese Foam Tea', 5.50), ('Cheese Foam Four Season Oolong Tea (L)', 'Cheese Foam Tea', 6.50),
-- Yakult
('Lemon Yakult (L)', 'Yakult', 6.50), ('Strawberry Yakult (L)', 'Yakult', 6.50), ('Grapefruit Yakult (L)', 'Yakult', 6.50),
-- Jam Series
('Strawberry Bubble Milk (M)', 'Jam Series', 5.50), ('Strawberry Bubble Milk (L)', 'Jam Series', 6.50),
('Mango Bubble Milk (M)', 'Jam Series', 5.50), ('Mango Bubble Milk (L)', 'Jam Series', 6.50),
('Strawberry Green Bubble Milk (M)', 'Jam Series', 5.50), ('Strawberry Green Bubble Milk (L)', 'Jam Series', 6.50),
('Mango Green Bubble Milk (M)', 'Jam Series', 5.50), ('Mango Green Bubble Milk (L)', 'Jam Series', 6.50),
('Strawberry Mochi (M)', 'Jam Series', 5.50), ('Strawberry Mochi (L)', 'Jam Series', 6.50),
('Mango Mochi (M)', 'Jam Series', 5.50), ('Mango Mochi (L)', 'Jam Series', 6.50),
-- Specialty Oolong
('Black Sesame Tofu Pudding Oolong (L)', 'Specialty Oolong Drinks', 6.50),
('Fresh Taro Mochi Bubble Oolong (L)', 'Specialty Oolong Drinks', 6.50),
-- Brown Sugar
('Brown Sugar Bubble Milk (M)', 'Brown Sugar', 5.50), ('Brown Sugar Bubble Milk (L)', 'Brown Sugar', 6.50),
('Brown Sugar Bubble Milk Tea (M)', 'Brown Sugar', 5.50), ('Brown Sugar Bubble Milk Tea (L)', 'Brown Sugar', 6.50),
('Brown Sugar Bubble Latte (M)', 'Brown Sugar', 5.50), ('Brown Sugar Bubble Latte (L)', 'Brown Sugar', 6.50);

-- map default toppings
DO $$
DECLARE
    p_id INT;
BEGIN
    SELECT product_id INTO p_id FROM products WHERE product_name = 'Yogurt Mango Slush (L)';
    INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Yogurt')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Mango Chunks')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Pearl Bubble'));
    
    SELECT product_id INTO p_id FROM products WHERE product_name = 'Yogurt Strawberry Slush (L)';
    INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Yogurt')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Strawberry Chunks')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Pearl Bubble'));

    SELECT product_id INTO p_id FROM products WHERE product_name = 'Mango Pomelo (L)';
    INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Grapefruit Sacs')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Mango Chunks')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Pearl Bubble')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Cheese Foam'));

    SELECT product_id INTO p_id FROM products WHERE product_name = 'Strawberry Pomelo (L)';
    INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Grapefruit Sacs')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Strawberry Chunks')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Pearl Bubble')), (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Cheese Foam'));

    FOR p_id IN 
        SELECT product_id FROM products 
        WHERE (product_name LIKE '%Bubble%' OR product_name LIKE '%Classic%')
          AND product_name NOT LIKE '%Popping%' 
          AND product_name NOT IN ('Yogurt Mango Slush (L)', 'Yogurt Strawberry Slush (L)', 'Mango Pomelo (L)', 'Strawberry Pomelo (L)')
    LOOP
        INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Regular Bubble')) ON CONFLICT DO NOTHING;
    END LOOP;

    FOR p_id IN SELECT product_id FROM products WHERE product_name LIKE 'Cheese Foam%' OR category = 'Specialty Oolong Drinks' LOOP
        INSERT INTO product_toppings VALUES (p_id, (SELECT topping_id FROM toppings WHERE topping_name='Cheese Foam')) ON CONFLICT DO NOTHING;
    END LOOP;
END $$;

– populate inventory and recipes

INSERT INTO inventory_items (ingredient_name, category, current_stock_qty, unit_of_measure, reorder_point_qty, safety_stock_qty, cost_per_unit, shelf_life_days) VALUES
('Whole Milk', 'Perishable', 40000.00, 'ml', 10000.00, 5000.00, 0.0025, 7),
('Oat Milk', 'Perishable', 20000.00, 'ml', 5000.00, 2000.00, 0.0040, 10),
('Brewed Jasmine Green Tea', 'Perishable', 30000.00, 'ml', 8000.00, 3000.00, 0.0008, 1),
('Brewed Black Tea', 'Perishable', 30000.00, 'ml', 8000.00, 3000.00, 0.0008, 1),
('Brewed Oolong Tea', 'Perishable', 25000.00, 'ml', 6000.00, 2500.00, 0.0010, 1),
('Brewed Thai Tea', 'Perishable', 20000.00, 'ml', 5000.00, 2000.00, 0.0012, 1),
('Fresh Mango Puree/Chunks', 'Perishable', 8000.00, 'grams', 2000.00, 1000.00, 0.0080, 3),
('Fresh Strawberry Puree/Chunks', 'Perishable', 8000.00, 'grams', 2000.00, 1000.00, 0.0080, 3),
('Grapefruit Sacs', 'Perishable', 5000.00, 'grams', 1500.00, 500.00, 0.0060, 4),
('Raw Tapioca Pearls', 'Core Ingredient', 50000.00, 'grams', 15000.00, 5000.00, 0.0030, 180),
('Uji Matcha Powder', 'Core Ingredient', 3000.00, 'grams', 800.00, 300.00, 0.0450, 365),
('Taro Powder/Paste', 'Core Ingredient', 10000.00, 'grams', 2500.00, 1000.00, 0.0120, 180),
('Brown Sugar Syrup', 'Core Ingredient', 15000.00, 'ml', 4000.00, 1500.00, 0.0050, 180),
('Cane Sugar Syrup', 'Core Ingredient', 20000.00, 'ml', 5000.00, 2000.00, 0.0020, 180),
('Yakult Base', 'Core Ingredient', 8000.00, 'ml', 2000.00, 800.00, 0.0070, 30),
('Cream Cheese Foam Prep', 'Perishable', 6000.00, 'grams', 1500.00, 500.00, 0.0070, 2),
('Creme Brulee Prep', 'Perishable', 4000.00, 'grams', 1000.00, 400.00, 0.0080, 2),
('Tofu Pudding Prep', 'Perishable', 5000.00, 'grams', 1200.00, 500.00, 0.0040, 3),
('Medium Cup & Lid', 'Packaging', 2500.00, 'units', 500.00, 200.00, 0.1200, 730),
('Large Cup & Lid', 'Packaging', 3500.00, 'units', 800.00, 300.00, 0.1500, 730),
('Boba Straws', 'Packaging', 8000.00, 'units', 1500.00, 500.00, 0.0200, 730);

-- map ingredients to recipes 
DO $$
DECLARE
    rec RECORD;
    i_milk INT; i_green_tea INT; i_black_tea INT; i_thai INT;
    i_tapioca INT; i_matcha INT; i_taro INT; i_brown_sugar INT; i_sugar INT; i_yakult INT;
    i_mango INT; i_strawberry INT; i_grapefruit INT; i_cheese_foam INT;
    i_med_cup INT; i_lrg_cup INT; i_straw INT;
BEGIN
    SELECT ingredient_id INTO i_milk FROM inventory_items WHERE ingredient_name = 'Whole Milk';
    SELECT ingredient_id INTO i_green_tea FROM inventory_items WHERE ingredient_name = 'Brewed Jasmine Green Tea';
    SELECT ingredient_id INTO i_black_tea FROM inventory_items WHERE ingredient_name = 'Brewed Black Tea';
    SELECT ingredient_id INTO i_thai FROM inventory_items WHERE ingredient_name = 'Brewed Thai Tea';
    SELECT ingredient_id INTO i_tapioca FROM inventory_items WHERE ingredient_name = 'Raw Tapioca Pearls';
    SELECT ingredient_id INTO i_matcha FROM inventory_items WHERE ingredient_name = 'Uji Matcha Powder';
    SELECT ingredient_id INTO i_taro FROM inventory_items WHERE ingredient_name = 'Taro Powder/Paste';
    SELECT ingredient_id INTO i_brown_sugar FROM inventory_items WHERE ingredient_name = 'Brown Sugar Syrup';
    SELECT ingredient_id INTO i_sugar FROM inventory_items WHERE ingredient_name = 'Cane Sugar Syrup';
    SELECT ingredient_id INTO i_yakult FROM inventory_items WHERE ingredient_name = 'Yakult Base';
    SELECT ingredient_id INTO i_mango FROM inventory_items WHERE ingredient_name = 'Fresh Mango Puree/Chunks';
    SELECT ingredient_id INTO i_strawberry FROM inventory_items WHERE ingredient_name = 'Fresh Strawberry Puree/Chunks';
    SELECT ingredient_id INTO i_grapefruit FROM inventory_items WHERE ingredient_name = 'Grapefruit Sacs';
    SELECT ingredient_id INTO i_cheese_foam FROM inventory_items WHERE ingredient_name = 'Cream Cheese Foam Prep';
    SELECT ingredient_id INTO i_med_cup FROM inventory_items WHERE ingredient_name = 'Medium Cup & Lid';
    SELECT ingredient_id INTO i_lrg_cup FROM inventory_items WHERE ingredient_name = 'Large Cup & Lid';
    SELECT ingredient_id INTO i_straw FROM inventory_items WHERE ingredient_name = 'Boba Straws';

    FOR rec IN SELECT product_id, product_name, category FROM products LOOP
        -- Packaging
        IF rec.product_name LIKE '%(M)' THEN
            INSERT INTO product_recipes VALUES (rec.product_id, i_med_cup, 1.0) ON CONFLICT DO NOTHING;
        ELSE
            INSERT INTO product_recipes VALUES (rec.product_id, i_lrg_cup, 1.0) ON CONFLICT DO NOTHING;
        END IF;
        INSERT INTO product_recipes VALUES (rec.product_id, i_straw, 1.0) ON CONFLICT DO NOTHING;

        -- Recipes
        IF rec.category = 'Brown Sugar' THEN
            INSERT INTO product_recipes VALUES 
                (rec.product_id, i_brown_sugar, CASE WHEN rec.product_name LIKE '%(L)' THEN 50.0 ELSE 35.0 END),
                (rec.product_id, i_tapioca, CASE WHEN rec.product_name LIKE '%(L)' THEN 70.0 ELSE 50.0 END),
                (rec.product_id, i_milk, CASE WHEN rec.product_name LIKE '%(L)' THEN 250.0 ELSE 180.0 END)
            ON CONFLICT DO NOTHING;
        ELSIF rec.category IN ('Fruit Slush', 'Yogurt Slush', 'Pomelo Slush') THEN
            IF rec.product_name LIKE '%Mango%' THEN INSERT INTO product_recipes VALUES (rec.product_id, i_mango, 120.0) ON CONFLICT DO NOTHING; END IF;
            IF rec.product_name LIKE '%Strawberry%' THEN INSERT INTO product_recipes VALUES (rec.product_id, i_strawberry, 120.0) ON CONFLICT DO NOTHING; END IF;
            IF rec.category = 'Pomelo Slush' THEN
                INSERT INTO product_recipes VALUES (rec.product_id, i_grapefruit, 40.0), (rec.product_id, i_tapioca, 50.0), (rec.product_id, i_cheese_foam, 45.0) ON CONFLICT DO NOTHING;
            END IF;
        ELSIF rec.category = 'Thai Tea' THEN
            INSERT INTO product_recipes VALUES 
                (rec.product_id, i_thai, CASE WHEN rec.product_name LIKE '%(L)' THEN 220.0 ELSE 160.0 END),
                (rec.product_id, i_milk, CASE WHEN rec.product_name LIKE '%(L)' THEN 60.0 ELSE 40.0 END),
                (rec.product_id, i_sugar, 30.0)
            ON CONFLICT DO NOTHING;
        ELSIF rec.category = 'Matcha' THEN
            INSERT INTO product_recipes VALUES 
                (rec.product_id, i_matcha, CASE WHEN rec.product_name LIKE '%(L)' THEN 12.0 ELSE 8.0 END),
                (rec.product_id, i_milk, CASE WHEN rec.product_name LIKE '%(L)' THEN 220.0 ELSE 160.0 END),
                (rec.product_id, i_sugar, 25.0)
            ON CONFLICT DO NOTHING;
        ELSIF rec.category IN ('Milk Tea', 'Bubble Tea', 'Taro') THEN
            IF rec.category = 'Taro' THEN INSERT INTO product_recipes VALUES (rec.product_id, i_taro, 40.0) ON CONFLICT DO NOTHING; END IF;
            INSERT INTO product_recipes VALUES 
                (rec.product_id, i_black_tea, CASE WHEN rec.product_name LIKE '%(L)' THEN 180.0 ELSE 130.0 END),
                (rec.product_id, i_milk, CASE WHEN rec.product_name LIKE '%(L)' THEN 80.0 ELSE 60.0 END),
                (rec.product_id, i_sugar, 25.0)
            ON CONFLICT DO NOTHING;
            IF rec.product_name LIKE '%Bubble%' THEN INSERT INTO product_recipes VALUES (rec.product_id, i_tapioca, CASE WHEN rec.product_name LIKE '%(L)' THEN 60.0 ELSE 45.0 END) ON CONFLICT DO NOTHING; END IF;
        ELSIF rec.category = 'Yakult' THEN
            INSERT INTO product_recipes VALUES (rec.product_id, i_yakult, 100.0), (rec.product_id, i_green_tea, 150.0), (rec.product_id, i_sugar, 20.0) ON CONFLICT DO NOTHING;
        ELSE
            INSERT INTO product_recipes VALUES (rec.product_id, i_green_tea, 180.0), (rec.product_id, i_sugar, 20.0) ON CONFLICT DO NOTHING;
        END IF;
    END LOOP;
END $$;
