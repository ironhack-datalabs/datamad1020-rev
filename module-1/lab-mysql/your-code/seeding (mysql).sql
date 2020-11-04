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

INSERT INTO salesperson VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Miami'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO customer VALUES
(10001, 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO car VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO invoices VALUES
('852399038', '2018-08-22', 0, 1, 3),
('731166526', '2018-12-31', 3, 0, 5),
('271135104', '2019-01-22', 2, 2, 7);





