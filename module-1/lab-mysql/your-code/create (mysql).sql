CREATE DATABASE cars;
USE cars;

CREATE TABLE salesperson (
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	staff_id INT PRIMARY KEY,
	salesperson_name VARCHAR(40) NOT NULL,
	store_location VARCHAR(40)
);

CREATE TABLE customer (
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(40) NOT NULL,
	phone_no VARCHAR(20) NOT NULL,
	email VARCHAR(320),
	address VARCHAR(60) NOT NULL,
	city VARCHAR(20) NOT NULL,
	province VARCHAR(20),
	country VARCHAR(30),
	zip CHAR(5)
);

CREATE TABLE car (
	vehicle_id CHAR(17) PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(20) NOT NULL,
	year_of_car INT,
	color VARCHAR(20) NOT NULL
);

CREATE TABLE invoices (
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	invoice_no VARCHAR(20) PRIMARY KEY,
	invoice_date DATE NOT NULL,
	car INT NOT NULL,
	customer INT NOT NULL,
	salesperson INT NOT NULL
);

ALTER TABLE invoices
ADD FOREIGN KEY(customer)
REFERENCES customer(customer_id)
ON DELETE SET NULL;

ALTER TABLE car
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson (staff_id)
ON DELETE CASCADE;

ALTER TABLE car
ADD FOREIGN KEY(customer)
REFERENCES customer(customer_id)
ON DELETE SET NULL;




