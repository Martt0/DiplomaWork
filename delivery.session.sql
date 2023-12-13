--CREATE TABLE Restaurants (
--     restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     phone_number VARCHAR(20),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE MenuItems (
--     item_id INT PRIMARY KEY AUTO_INCREMENT,
--     restaurant_id INT,
--     name VARCHAR(255) NOT NULL,
--     description TEXT,
--     price DECIMAL(10, 2) NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
-- );

-- CREATE TABLE Customers (
--     customer_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     phone_number VARCHAR(20),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY AUTO_INCREMENT,
--     customer_id INT,
--     restaurant_id INT,
--     total_amount DECIMAL(10, 2) NOT NULL,
--     order_status ENUM('Placed', 'Processing', 'Out for Delivery', 'Delivered', 'Cancelled') DEFAULT 'Placed',
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
--     FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
-- );

-- CREATE TABLE OrderItems (
--     order_item_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     item_id INT,
--     quantity INT NOT NULL,
--     subtotal DECIMAL(10, 2) NOT NULL,
--     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
--     FOREIGN KEY (item_id) REFERENCES MenuItems(item_id) ON DELETE CASCADE
-- );

-- CREATE TABLE DeliveryDrivers (
--     driver_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     phone_number VARCHAR(20) NOT NULL,
--     current_location VARCHAR(255),
--     available BOOLEAN DEFAULT TRUE,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE OrderDeliveries (
--     delivery_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     driver_id INT,
--     delivery_status ENUM('Assigned', 'Out for Delivery', 'Delivered') DEFAULT 'Assigned',
--     delivered_at TIMESTAMP,
--     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
--     FOREIGN KEY (driver_id) REFERENCES DeliveryDrivers(driver_id) ON DELETE SET NULL
-- );

-- Create (Insert) Operation
INSERT INTO Restaurants (name, address, phone_number) VALUES ('Restaurant A', '123 Main St', '555-1234');

-- Read (Select) Operation
SELECT * FROM Restaurants WHERE name = 'Resturant A';

-- Update Operation
UPDATE Restaurants SET phone_number = '555-5678' WHERE restaurant_id = 1;

-- Delete Operation
DELETE FROM Restaurants WHERE restaurant_id = 1;


