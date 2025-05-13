-- Sample data insertions for StoreFrontDB

USE finalguiproject;

-- Add admin user manually
INSERT INTO Users (username, pass, userRole) VALUES ('admin', 'adminpass', 1);


-- Add sample customers
INSERT INTO Users (username, pass, userRole) VALUES
('guest', 'guest', 2);


-- Add sample products
INSERT INTO Product (name, price) VALUES
('Backpack', 49.99),
('Water Bottle', 15.50),
('Notebook', 5.25),
('Wireless Mouse', 24.99);


-- Add sample sales
INSERT INTO Sales (userID, productID, quantity, price) VALUES
(2, 1, 1, 49.99),
(3, 2, 2, 15.50),
(4, 4, 1, 24.99);
