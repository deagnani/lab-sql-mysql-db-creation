CREATE DATABASE car_sales;
USE car_sales;
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);
INSERT INTO Cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Red'),
('1FAFP404XWF237488', 'Ford', 'Mustang', 2019, 'Blue');
INSERT INTO Customers (name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES
('John Doe', '555-1234', 'john.doe@example.com', '123 Elm Street', 'Springfield', 'IL', 'USA', '62704'),
('Jane Smith', '555-5678', 'jane.smith@example.com', '456 Oak Avenue', 'Springfield', 'IL', 'USA', '62704');
INSERT INTO Salespersons (name, store) VALUES
('Alice Johnson', 'Springfield Central'),
('Bob Brown', 'Springfield North');
INSERT INTO Invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
('INV001', '2024-06-22', 1, 1, 1),
('INV002', '2024-06-23', 2, 2, 2);
SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Invoices;


