-- CREATE TABLE customers (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(100),
--   last_name VARCHAR(100),
--   email VARCHAR(100)
-- );

-- CREATE TABLE orders (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   order_date DATE,
--   amount DECIMAL(8,2),
--   customer_id INT,
--   FOREIGN KEY(customer_id) 
--         REFERENCES customers(id)
--         ON DELETE CASCADE
-- );

-- CROSS JOIN - this is meaningless
-- SELECT * FROM customers, orders;

-- IMPLICIT INNER JOIN
-- SELECT * FROM customers, orders
-- WHERE customers.id = orders.customer_id;

-- SELECT first_name, last_name, order_date, amount FROM customers, orders
-- WHERE customers.id = orders.customer_id;

-- Explicit INNER JOIN
-- SELECT first_name, last_name, order_date, amount FROM customers
-- JOIN orders
--   ON customers.id = orders.customer_id;

-- operations on the inner joined table
-- SELECT 
--   first_name, 
--   last_name, 
--   SUM(amount) AS total_spent
-- FROM customers
-- JOIN orders
--   ON customers.id = orders.customer_id
-- GROUP BY orders.customer_id
-- ORDER BY total_spent DESC;

-- Left join
-- SELECT first_name, last_name, amount
-- FROM customers
-- LEFT JOIN orders
--   ON customers.id = orders.customer_id;

-- SELECT 
--   first_name, 
--   last_name, 
--   IFNULL(SUM(amount), 0) AS "total_spent"
-- FROM customers
-- LEFT JOIN orders
--   ON orders.customer_id = customers.id
-- GROUP BY customers.id
-- ORDER BY total_spent DESC;

-- Right Join
-- SELECT * FROM customers
-- RIGHT JOIN orders
--   ON customers.id = orders.customer_id;

-- ON DELETE Cascade


