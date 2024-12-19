use Data_Cleaning
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);

INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(1, 'Laptop', 'electronics', 1000.00, 50),       -- Lowercase category
(2, 'Laptop', 'Electronics', NULL, 50),          -- Duplicate product with NULL price
(3, 'Phone', 'ELECTRONICS', 500.00, NULL),       -- Uppercase category and NULL stock
(4, 'TV', 'Electronic Goods', 800.00, 20),       -- Different category name variation
(5, 'Headphones', 'Accessories', -50.00, 100),   -- Negative price
(6, 'HeadPhones', 'accessories', 50.00, -10),    -- Misspelled name, inconsistent category, negative stock
(7, 'Camera', 'Electronics', 500.00, 20),        -- Duplicate price and stock
(8, 'camera', 'ELECTRONICS', 500.00, 15),        -- Lowercase product name, inconsistent stock
(9, 'Shoes', 'Footwear', 80.00, 75),
(10, 'Shirt', 'Apparel', 20.00, NULL);           -- NULL stock

-- resolving uppercase issues

UPDATE products
SET category = UPPER(category);

-- Further categorize variations into a standard category (e.g., 'Electronics')
UPDATE products
SET category = 'ELECTRONICS'
WHERE category IN ('ELECTRONIC GOODS', 'ELECTRONICS');
select * from products

--Remove duplicate products
WITH CTE AS (
  SELECT product_id, product_name, category,
         ROW_NUMBER() OVER (PARTITION BY product_name, category ORDER BY product_id) AS row_num
  FROM products)
DELETE FROM products
WHERE product_id IN (SELECT product_id FROM CTE WHERE row_num > 1);


-- Replace NULL prices with a default value (e.g., 100.00)
UPDATE products
SET price = 100.00
WHERE price IS NULL;

-- Replace NULL stock values with a default value of 0
UPDATE products
SET stock = 0
WHERE stock IS NULL;
select * from products

-- Ensure price is not negative by giving it a default value.
UPDATE products
SET price = 1.00
WHERE price < 0;

-- Ensure stock is not negative
UPDATE products
SET stock = 0
WHERE stock < 0;
 

