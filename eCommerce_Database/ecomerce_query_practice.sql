-- >>Demo Data Script<<

-- 1. Insert Demo Users

INSERT INTO users (first_name, last_name, email, password, role)
VALUES
('John', 'Doe', 'john.doe@example.com', 'hashed_password_1', 'admin'),
('Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', 'customer'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', 'customer'),
('Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4', 'customer'),
('Charlie', 'Davis', 'charlie.davis@example.com', 'hashed_password_5', 'admin');

-- 2. Insert Demo Categories

INSERT INTO categories (name, parent_id)
VALUES
('Electronics', NULL),
('Mobiles', 1),
('Laptops', 1),
('Fashion', NULL),
('Men', 4),
('Women', 4);

-- 3. Insert Demo Products

INSERT INTO products (name, description, price, stock, category_id, image_url)
VALUES
('iPhone 14', 'Latest Apple iPhone', 999.99, 50, 2, 'iphone14.jpg'),
('Samsung Galaxy S22', 'Samsung flagship phone', 799.99, 40, 2, 'galaxy_s22.jpg'),
('MacBook Pro', 'Apple laptop for professionals', 1999.99, 30, 3, 'macbook_pro.jpg'),
('Dell XPS 13', 'Premium ultrabook from Dell', 1499.99, 25, 3, 'dell_xps_13.jpg'),
('Men T-Shirt', 'Cotton t-shirt for men', 19.99, 100, 5, 'men_tshirt.jpg'),
('Women Dress', 'Elegant evening dress', 49.99, 80, 6, 'women_dress.jpg'),
('Wireless Headphones', 'Noise-cancelling headphones', 199.99, 60, 1, 'headphones.jpg'),
('Smartwatch', 'Fitness tracking smartwatch', 299.99, 70, 1, 'smartwatch.jpg'),
('Power Bank', 'Portable power bank 10000mAh', 29.99, 120, 1, 'power_bank.jpg'),
('Bluetooth Speaker', 'Portable speaker with Bluetooth', 59.99, 90, 1, 'bluetooth_speaker.jpg');

-- 4. Insert Demo Customers

INSERT INTO customers (user_id, phone, address, city, state, zip_code)
VALUES
(2, '1234567890', '123 Main St', 'New York', 'NY', '10001'),
(3, '9876543210', '456 Elm St', 'Los Angeles', 'CA', '90001'),
(4, '5555555555', '789 Pine St', 'Chicago', 'IL', '60601'),
(5, '4444444444', '101 Oak St', 'Houston', 'TX', '77001');

-- 5. Insert Demo Orders

INSERT INTO orders (customer_id, total, status)
VALUES
(1, 1099.98, 'processing'),
(2, 799.99, 'shipped'),
(3, 1999.99, 'pending'),
(4, 49.99, 'delivered'),
(1, 299.99, 'processing');

-- 6. Insert Demo Order Items

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 999.99),
(1, 9, 2, 29.99),
(2, 2, 1, 799.99),
(3, 3, 1, 1999.99),
(4, 6, 1, 49.99),
(5, 8, 1, 299.99);

-- 7. Insert Demo Payments

INSERT INTO payments (order_id, payment_method, payment_status, amount)
VALUES
(1, 'credit_card', 'completed', 1099.98),
(2, 'paypal', 'completed', 799.99),
(3, 'credit_card', 'pending', 1999.99),
(4, 'cod', 'completed', 49.99),
(5, 'bank_transfer', 'completed', 299.99);

-- 8. Insert Demo Reviews

INSERT INTO reviews (product_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing phone! Worth every penny.'),
(2, 3, 4, 'Great value for the price.'),
(3, 4, 5, 'Perfect laptop for work.'),
(4, 5, 4, 'Solid performance and design.'),
(6, 3, 5, 'Beautiful dress, highly recommend!');

-- 9. Insert Demo Cart Items

INSERT INTO cart_items (user_id, product_id, quantity)
VALUES
(2, 7, 1),
(3, 1, 1),
(4, 9, 2),
(5, 5, 3);
SET SQL_SAFE_UPDATES = 0;