CREATE DATABASE lab_mysql;

CREATE TABLE cars (
	vin INT PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(40) NOT NULL,
	year INT,
	color VARCHAR(40) NOT NULL 
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	phone_numbrer VARCHAR(20) NOT NULL,
	email VARCHAR(40) NOT NULL,
	adress VARCHAR(40) NOT NULL,
	city VARCHAR(40) NOT NULL,
	state_province VARCHAR(40) NOT NULL,
	country VARCHAR(40) NOT NULL,
	zip_postal VARCHAR(40) NOT NULL
);

CREATE TABLE salespersons (
	staff_id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	store VARCHAR(40) NOT NULL
);

CREATE TABLE invoices (
	invoice_number INT PRIMARY KEY,
	date DATE,
	car VARCHAR(40) NOT NULL,
	customer VARCHAR(40) NOT NULL,
	salespersons VARCHAR(40) NOT NULL
);


ALTER TABLE `salespersons`
ADD FOREIGN KEY (staff_id)
REFERENCES cars(vin)
ON DELETE CASCADE;

ALTER TABLE `salespersons`
ADD FOREIGN KEY (staff_id)
REFERENCES customers(customer_id)
ON DELETE CASCADE;

ALTER TABLE `customers`
ADD FOREIGN KEY (customer_id)
REFERENCES cars(vin)
ON DELETE CASCADE;

ALTER TABLE cars
ADD FOREIGN KEY (vin)
REFERENCES invoices(invoice_number)
ON DELETE CASCADE;


