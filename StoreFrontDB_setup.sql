-- Database Setup Script for StoreFrontDB (Initial Setup Only)

-- Create the database
CREATE DATABASE finalguiproject;
USE finalguiproject;


-- Create Users table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    pass VARCHAR(255) NOT NULL,
    userRole INT NOT NULL -- 1 = admin, 2 = customer
);


-- Create Product table
CREATE TABLE Product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL
);


-- Create Sales table
CREATE TABLE Sales (
    saleID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    productID INT,
    quantity INT,
    price DOUBLE,
    FOREIGN KEY (userID) REFERENCES Users(id),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);


-- Stored Procedures

DELIMITER //

-- Register new user
CREATE PROCEDURE RegisterNewUser(IN uname VARCHAR(255), IN pword VARCHAR(255))
BEGIN
    INSERT INTO Users (username, pass, userRole) VALUES (uname, pword, 2);
END;
//


-- Login with credentials
CREATE PROCEDURE LoginWithCreds(IN uname VARCHAR(255), IN pword VARCHAR(255))
BEGIN
    SELECT id, username, userRole FROM Users
    WHERE username = uname AND pass = pword;
END;
//


-- Get all products
CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT productID, name, price FROM Product;
END;
//


-- Submit new product (admin only)
CREATE PROCEDURE SubmitNewProduct(IN pname VARCHAR(255), IN pprice DOUBLE)
BEGIN
    INSERT INTO Product (name, price) VALUES (pname, pprice);
END;
//


-- Submit order
CREATE PROCEDURE SubmitOrder(IN pid INT, IN uid INT, IN qty INT, IN pprice DOUBLE)
BEGIN
    INSERT INTO Sales (userID, productID, quantity, price)
    VALUES (uid, pid, qty, pprice);
END;
//


-- Get sales total
CREATE PROCEDURE GetSalesTotal()
BEGIN
    SELECT SUM(price * quantity) AS totalSales FROM Sales;
END;
//

DELIMITER ;
