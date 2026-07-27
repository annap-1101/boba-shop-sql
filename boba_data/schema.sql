CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(5,2) NOT NULL
);

CREATE TABLE toppings (
    topping_id SERIAL PRIMARY KEY,
    topping_name VARCHAR(100) NOT NULL,
    cost_per_unit DECIMAL(5,2) NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_datetime TIMESTAMP NOT NULL
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id) ON DELETE CASCADE,
    product_id INT REFERENCES products(product_id),
    quantity INT NOT NULL DEFAULT 1,
    historical_price DECIMAL(5,2) NOT NULL
);

CREATE TABLE order_item_toppings (
    order_item_topping_id SERIAL PRIMARY KEY,
    order_item_id INT REFERENCES order_items(order_item_id) ON DELETE CASCADE,
    topping_id INT REFERENCES toppings(topping_id),
    quantity INT NOT NULL DEFAULT 1,
    customer_price_per_unit DECIMAL(5,2) NOT NULL DEFAULT 0.99
);

– creating supply chain/inventory tables

CREATE TABLE inventory_items (
    ingredient_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,          -- 'Perishable', 'Core Ingredient', 'Packaging'
    current_stock_qty DECIMAL(10,2) NOT NULL,
    unit_of_measure VARCHAR(20) NOT NULL,   -- 'ml', 'grams', 'units'
    reorder_point_qty DECIMAL(10,2) NOT NULL,
    safety_stock_qty DECIMAL(10,2) NOT NULL,
    cost_per_unit DECIMAL(8,4) NOT NULL,    -- Detailed unit cost
    shelf_life_days INT NOT NULL
);

CREATE TABLE product_recipes (
    product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
    ingredient_id INT REFERENCES inventory_items(ingredient_id) ON DELETE CASCADE,
    qty_required DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (product_id, ingredient_id)
);

CREATE TABLE waste_log (
    waste_id SERIAL PRIMARY KEY,
    ingredient_id INT REFERENCES inventory_items(ingredient_id),
    qty_wasted DECIMAL(10,2) NOT NULL,
    waste_reason VARCHAR(100) NOT NULL,     -- 'Expired', 'Spilled', 'Batch Spoiled'
    waste_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    financial_loss_usd DECIMAL(8,2) NOT NULL
);
