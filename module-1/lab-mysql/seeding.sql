CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
	vin VARCHAR(30),
	manufacturer VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	year INT,
	color VARCHAR(20) NOT NULL,
	invoices INT,
	salesperson INT,
	customers INT
);

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	customer_id INT,
	name VARCHAR(40) NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	email VARCHAR(30),
	address VARCHAR(40) NOT NULL,
	city VARCHAR(20) NOT NULL,
	state_province VARCHAR(20) NOT NULL,
	country VARCHAR(20) NOT NULL,
	zip_code VARCHAR(20) NOT NULL,
	salesperson VARCHAR(30) NOT NULL
);

CREATE TABLE invoices (
	id INT PRIMARY KEY AUTO_INCREMENT,
	invoice_number INT,
	date DATE NOT NULL,
	car VARCHAR(20) NOT NULL,
	customer VARCHAR(20) NOT NULL,
	salesperson VARCHAR(20) NOT NULL
);

CREATE TABLE salesperson (
	id INT PRIMARY KEY AUTO_INCREMENT,
	staff_id INT,
	name VARCHAR(20) NOT NULL,
	store VARCHAR(30) NOT NULL
);

ALTER TABLE cars
ADD FOREIGN KEY(invoices)
REFERENCES invoices(invoice_number)
ON DELETE SET NULL;

ALTER TABLE cars
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson(staff_id)
ON DELETE SET NULL;

ALTER TABLE cars
ADD FOREIGN KEY(customers)
REFERENCES customers(customer_id)
ON DELETE CASCADE;

ALTER TABLE customers
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson(name)
ON DELETE CASCADE;


INSERT INTO cars VALUES
(0, 3K096I98581DHSNUP, Volkswagen, Tiguan, 2019, Blue),
(1, ZM8G7BEUQZ97IH46V, Peugeot, Rifter, 2019, Red),
(2, RKXVNNIHLVVZOUB4M, Ford, Fusion, 2017, White),
(3, HKNDGS7CU31E9Z7JW, Toyota, RAV4, 2018, White),
(4, DAM41UDN3CHU2WVF6, Volvo, V60, 2019, Gray),
(5, DAM41UDN3CHU2WVF6, Volvo, V60_Cross_Country, 2019, Gray);

INSERT INTO customers VALUES
(0, 10001, Pablo_Picasso, +34636176382, NULL, Paseo_de_la_Chopera_14, Madrid, Madrid, Spain, 28045),
(1, 20001, Abraham_Lincoln, +13059077086, NULL, 120_SW_8th_St, Miami, Florida, United_States, 33130),
(2, 30001, Napoleón_Bonaparte, +33179754000, NULL, 40_Rue_du_Colisée, París, Île-de-France, France, 75008);

INSERT INTO salesperson VALUES
(0, 00001, Petey_Cruiser, Madrid),
(1, 00002, Anna_Sthesia, Barcelona),
(2, 00003, Paul_Molive, Berlin),
(3, 00004, Gail_Forcewind, Paris),
(4, 00005, Paige_Turner, Mimia),
(5, 00006, Bob_Frapples, Mexico_City),
(6, 00007, Walter_Melon, Amsterdam),
(7, 00008, Shonda_Leer, São_Paulo);

INSERT INTO invoices VALUES
(0, 852399038, 2018-08-22, 0, 1, 3),
(1, 731166526, 2018-12-31, 3, 0, 5),
(2, 271135104, 2019-01-22, 2, 2, 7);
