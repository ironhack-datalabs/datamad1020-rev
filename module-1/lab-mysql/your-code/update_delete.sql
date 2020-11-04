CREATE DATABASE lab_mysql5;
USE lab_mysql5;

CREATE TABLE cars (
vehicle_id VARCHAR(40) PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
car_year VARCHAR(4) NOT NULL,
color VARCHAR(40) NOT NULL
);

CREATE TABLE salesperson (
staff_id INT PRIMARY KEY,
firstname VARCHAR(40) NOT NULL,
store VARCHAR(40) NOT NULL
);

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(40) NOT NULL,
phone_number VARCHAR(40) NOT NULL,
email VARCHAR(40),
address VARCHAR(40) NOT NULL,
city VARCHAR(40),
state_province VARCHAR(40),
country VARCHAR(40),
zip_code VARCHAR(10) NOT NULL
);

CREATE TABLE invoices (
invoice_number INT PRIMARY KEY, 
invoice_date DATE,
cars VARCHAR(40),
customers INT,
salesperson INT
);

ALTER TABLE invoices
ADD FOREIGN KEY(cars)
REFERENCES cars(vehicle_id)
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY(customers)
REFERENCES customers(customer_id)
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson(staff_id)
ON DELETE SET NULL;

INSERT INTO cars VALUES
("3K096I98581DHSNUP", "Volkswagen",	"Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF8", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera 14", "Madrid", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(30001,	"Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France",	"France", "75008");

INSERT INTO salesperson VALUES
(00001,	"Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003,	"Paul Molive", "Berlin"),
(00004,	"Gail Forcewind", "Paris"),
(00005,	"Paige Turner", "Mimia"),
(00006,	"Bob Frapples",	"Mexico City"),
(00007,	"Walter Melon",	"Amsterdam"),
(00008,	"Shonda Leer", "São Paulo");

INSERT INTO invoices VALUES
(852399038,	"2018-08-22", "3K096I98581DHSNUP", 20001, 00004),
(731166526,	"2018-12-31", "HKNDGS7CU31E9Z7JW", 10001, 00006),
(271135104,	"2019-01-22", "RKXVNNIHLVVZOUB4M", 30001, 00008);

UPDATE salesperson
SET store = "Miami"
WHERE staff_id = 00005

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE country = "Spain";

UPDATE customers
SET email = "lincoln@us.gov"
WHERE country = "United States";

UPDATE customers
SET email = "hello@napoleon.me"
WHERE country = "France";

DELETE FROM cars WHERE vehicle_id = "DAM41UDN3CHU2WVF6";



