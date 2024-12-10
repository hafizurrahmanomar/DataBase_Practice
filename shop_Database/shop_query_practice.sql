-- 1. Insert Data into (users table)

INSERT INTO users (firstName, lastName, email, password, otp) VALUES
('John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1234'),
('Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '5678'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', '2345'),
('Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4', '6789'),
('Charlie', 'Taylor', 'charlie.taylor@example.com', 'hashed_password_5', '3456');

-- 2.Insert Data into (`categories` table)
INSERT INTO categories (name, user_id) VALUES
('Electronics', 1),
('Books', 2),
('Clothing', 3),
('Home Appliances', 4),
('Sports', 5);

-- 3. Insert Data into (`products `table)

INSERT INTO products (name, price, unit, quantity, description, image, user_id, category_id) VALUES
('Laptop', '1200', 'Piece', 10, 'High-end gaming laptop', 'laptop.jpg', 1, 1),
('Smartphone', '800', 'Piece', 20, 'Latest model smartphone', 'smartphone.jpg', 1, 1),
('Fiction Book', '20', 'Piece', 50, 'Popular fiction book', 'book.jpg', 2, 2),
('Non-Fiction Book', '25', 'Piece', 40, 'Best-selling non-fiction book', 'nonfiction.jpg', 2, 2),
('T-shirt', '15', 'Piece', 100, 'Cotton t-shirt', 'tshirt.jpg', 3, 3),
('Jeans', '40', 'Piece', 60, 'Denim jeans', 'jeans.jpg', 3, 3),
('Microwave Oven', '150', 'Piece', 15, 'Compact microwave oven', 'microwave.jpg', 4, 4),
('Blender', '50', 'Piece', 25, 'Multi-speed blender', 'blender.jpg', 4, 4),
('Football', '30', 'Piece', 70, 'Official size football', 'football.jpg', 5, 5),
('Tennis Racket', '100', 'Piece', 30, 'Professional tennis racket', 'racket.jpg', 5, 5);

-- 4. Insert Data into (`customers` table)

INSERT INTO customers (name, email, mobile, user_id) VALUES
('Emma Watson', 'emma.watson@example.com', '1234567890', 1),
('Liam Smith', 'liam.smith@example.com', '2345678901', 2),
('Olivia Brown', 'olivia.brown@example.com', '3456789012', 3),
('Noah Johnson', 'noah.johnson@example.com', '4567890123', 4),
('Sophia Davis', 'sophia.davis@example.com', '5678901234', 5);

-- 5. Insert Data into (`invoices` table)

INSERT INTO invoices (total, discount, vat, payable, user_id, customer_id) VALUES
('1000', '50', '18', '968', 1, 1),
('2000', '100', '36', '1864', 2, 2),
('500', '25', '9', '484', 3, 3),
('300', '15', '5.4', '279.6', 4, 4),
('1500', '75', '27', '1398', 5, 5);

-- 6. Insert Data into (`invoice_products` table)
INSERT INTO invoice_products (qty, sale_price, user_id, product_id, invoice_id) VALUES
('2', '1000', 1, 1, 1),
('3', '800', 1, 2, 1),
('1', '20', 2, 3, 2),
('1', '25', 2, 4, 2),
('2', '15', 3, 5, 3),
('1', '40', 3, 6, 3),
('1', '150', 4, 7, 4),
('2', '50', 4, 8, 4),
('3', '30', 5, 9, 5),
('1', '100', 5, 10, 5);


--1. Basic Queries

-- Select all users:
SELECT * FROM users;

-- Select specific columns (e.g., firstName and email) from users:
SELECT firstName, email FROM users;

-- View all products
SELECT * FROM products;


-- 2. Filtering Data
-- Find a user by their email:
SELECT * FROM users WHERE email = 'john.doe@example.com';

-- Find products priced below $50:
SELECT * FROM products WHERE price < '50';

-- Find customers with mobile numbers starting with '123':
SELECT * FROM customers WHERE mobile LIKE '123%';

-- 3.Sorting Data
-- Sort users by their last name alphabetically:

SELECT * FROM users ORDER BY lastName ASC;

-- Sort products by price (highest to lowest):
SELECT * FROM products ORDER BY price DESC;

-- 4.Using Aggregate Functions

-- Count the number of products:
SELECT COUNT(*) AS TotalProducts FROM products;

-- Find the total quantity of all products:
SELECT SUM(quantity) AS TotalQuantity FROM products;

-- Get the average price of products:
SELECT AVG(price) AS AveragePrice FROM products;

-- Get the top 5 most expensive products:
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- Get the first 3 users:
SELECT * FROM users LIMIT 3;

-- Insert a new user:
INSERT INTO users (firstName, lastName, email, password, otp)
VALUES ('Michael', 'Scott', 'michael.scott@example.com', 'hashed_password_789', '9999');

-- Insert a new product:
INSERT INTO products (name, price, unit, quantity, description, image, user_id, category_id)
VALUES ('Headphones', '100', 'Piece', 15, 'Wireless headphones', 'headphones.jpg', 1, 1);

-- 5.Update and Delete
-- Update a product’s price:
UPDATE products
SET price = '1500'
WHERE name = 'Laptop';
-- Update a user's email address:
UPDATE users
SET email = 'new.email@example.com'
WHERE id = 1;
-- Update a customer’s mobile number:
UPDATE customers
SET mobile = '9876543210'
WHERE name = 'Alice';

-- Update multiple fields for a user:
UPDATE users
SET firstName = 'Michael', lastName = 'Johnson'
WHERE id = 2;

-- Delete a customer:
DELETE FROM customers WHERE email = 'bob.brown@example.com';










-- Expert Queries
-- List all products and their categories:
SELECT products.name AS ProductName, categories.name AS CategoryName 
FROM products
JOIN categories ON products.category_id = categories.id;



-- 2.Find all invoices for a specific customer:
SELECT invoices.id, invoices.total, customers.name 
FROM invoices
JOIN customers ON invoices.customer_id = customers.id
WHERE customers.name = 'Emma Watson';

-- 3.Calculate total sales for each product:
SELECT products.name AS ProductName, SUM(invoice_products.qty * invoice_products.sale_price) AS TotalSales
FROM invoice_products
JOIN products ON invoice_products.product_id = products.id
GROUP BY products.name;

-- 4.List users and the total number of categories they manage:
SELECT users.firstName, users.lastName, COUNT(categories.id) AS TotalCategories
FROM users
LEFT JOIN categories ON users.id = categories.user_id
GROUP BY users.id;

--5.Find products sold in each invoice:
SELECT invoices.id AS InvoiceID, products.name AS ProductName, invoice_products.qty, invoice_products.sale_price
FROM invoice_products
JOIN invoices ON invoice_products.invoice_id = invoices.id
JOIN products ON invoice_products.product_id = products.id;


-- Safe Update Mode
SET SQL_SAFE_UPDATES = 0;
