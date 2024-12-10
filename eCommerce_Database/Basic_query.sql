
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


 
-- Filtering Data
SELECT * FROM products WHERE price > 1900;

SET SQL_SAFE_UPDATES = 0;

-- simple select query using Alias
SELECT a.name, a.price, a.stock, FROM products a
