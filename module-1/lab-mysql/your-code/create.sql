### CREAR TABLAS ###

USE lab_mysql;
CREATE TABLE cars (
	VIN INT PRIMARY KEY,
    Manufacturer VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    Year_ VARCHAR(40) NOT NULL,
    Color VARCHAR(40) NOT NULL
);

CREATE TABLE customer (
	Customer_id INT PRIMARY KEY,
    Phone VARCHAR(40) NOT NULL,
    email VARCHAR(100) NOT NULL,
    addres VARCHAR(30),
    city VARCHAR(20),
    province VARCHAR(20),
    Country VARCHAR(20),
    Postal_code VARCHAR(10) NOT NULL,
    Cars INT
);

CREATE TABLE salespersons (
	Staff_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    Store VARCHAR(20) NOT NULL,
    Cars INT
);

CREATE TABLE invoices (
	Invoice_number INT PRIMARY KEY UNIQUE,
	Date DATE NOT NULL,
	Cars INT,
	Customer INT,
	Salesperson INT
);