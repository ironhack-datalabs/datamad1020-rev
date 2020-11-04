CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE cars (
	VIN VARCHAR(40) NOT NULL PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(20) NOT NULL, 
	car_year INT,
	color VARCHAR(20),
	customer INT,
	staff INT
);
CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(40) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	email VARCHAR(40),
	address VARCHAR(40) NOT NULL,
	city VARCHAR(40) NOT NULL,
	state VARCHAR(40) NOT NULL,
	country VARCHAR(40) NOT NULL,
	zip_code VARCHAR(20) NOT NULL
);
CREATE TABLE salespersons (
	staff_id INT PRIMARY KEY,
	staff_name VARCHAR(40) NOT NULL,
	store VARCHAR(40) NOT NULL
);
CREATE TABLE invoice (
	invoice_number INT PRIMARY KEY,
	invoice_date DATE,
	car VARCHAR(40) NOT NULL,
	customer_invoice VARCHAR(40) NOT NULL,
	salesperson_related VARCHAR(40) NOT NULL,
	customer INT,
	staff INT
);
ALTER TABLE invoice
ADD FOREIGN KEY (customer)
REFERENCES customers(customer_id)
ON DELETE SET NULL;
ALTER TABLE cars
ADD FOREIGN KEY (customer)
REFERENCES customers(customer_id)
ON DELETE SET NULL;
ALTER TABLE invoice
ADD FOREIGN KEY (staff)
REFERENCES salespersons(staff_id)
ON DELETE SET NULL;
ALTER TABLE cars
ADD FOREIGN KEY (staff)
REFERENCES salespersons(staff_id)
ON DELETE SET NULL;
