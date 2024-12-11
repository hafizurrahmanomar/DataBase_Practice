
-- Aggregate Function

SELECT COUNT(*) FROM products;
SELECT SUM(price) FROM products;
SELECT AVG(price) FROM products;
SELECT MAX(price) FROM products;
SELECT MIN(price) FROM products;

-- Show Data Table using alias
-- All Data Select
SELECT *FROM products;
-- simple Column Select
SELECT name,price FROM products;

-- simple select query using Alias( At First => SELECT FROM products p; than . use)
SELECT p.name, p.price, p.stock FROM products p;
SELECT c.id, c.name FROM categories c;

 -- Join Query users->u categories->c must be relationship
SELECT p.name, p.description, p.updated_at, c.name,c.created_at FROM products p INNER JOIN categories c ON p.category_id=c.id;
SELECT p.name, p.description, p.updated_at, c.name,c.created_at FROM products p LEFT JOIN categories c ON p.category_id=c.id;
SELECT p.name, p.description, p.updated_at, c.name,c.created_at FROM products p RIGHT JOIN categories c ON p.category_id=c.id;
SELECT p.name, p.description, p.updated_at, c.name,c.created_at FROM products p CROSS JOIN categories c ON p.category_id=c.id;

-- Filtering Data
SELECT * FROM products WHERE price > 1900;
SELECT * FROM products WHERE name="MacBook Mini 4 Pro";

-- Data Delete
DELETE FROM products WHERE id=20;

-- Data Update
UPDATE products SET name ='iPhone 16 pro', description= 'Good Phone', price ='180000', stock ='50' WHERE id = 1;

-- Data Insert
INSERT INTO products (name, description, price, stock, category_id, image_url) VALUES ('MacBook Mini 4 Pro', 'Apple Mini for professionals', 76000, 30, 1, 'macbook_mini4.jpg');

SET SQL_SAFE_UPDATES = 0;


