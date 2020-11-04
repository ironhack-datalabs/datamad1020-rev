CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
	id INT PRIMARY KEY,
	vin_num VARCHAR (20) NOT NULL, -- This should be unique but the lab on purpose put two entries with same number -- 
	manuf VARCHAR (40) NOT NULL,
	model VARCHAR (40) NOT NULL,
	year INT NOT NULL,
	color VARCHAR (15)
	);

    CREATE TABLE customers (
	id INT PRIMARY KEY,
	cust_id VARCHAR (10) NOT NULL UNIQUE,
	name VARCHAR (40) NOT NULL,
	phone_num VARCHAR (40) NOT NULL UNIQUE,
	email VARCHAR (40) UNIQUE,
    address VARCHAR (40) NOT NULL,
    city VARCHAR (20) NOT NULL,
    state VARCHAR (20),
	country VARCHAR (40) NOT NULL,
    zip_code CHAR (5) NOT NULL
	);
    
    CREATE TABLE sales (
	id INT PRIMARY KEY,
	staff_id INT NOT NULL UNIQUE,
	name VARCHAR (40) NOT NULL,
	store VARCHAR (40) NOT NULL
    );
    
	CREATE TABLE invoices (
	id INT PRIMARY KEY,
	inv_id INT NOT NULL UNIQUE,
	date DATETIME NOT NULL,
	car INT NOT NULL, 
    customer INT NOT NULL, 
    salesperson INT NOT NULL
    );
    
ALTER TABLE invoices
ADD FOREIGN KEY(car)
REFERENCES cars(id)
ON DELETE CASCADE; 

ALTER TABLE invoices
ADD FOREIGN KEY(customer)
REFERENCES customers(id)
ON DELETE CASCADE; 

ALTER TABLE invoices
ADD FOREIGN KEY(salesperson)
REFERENCES sales(id)
ON DELETE CASCADE; 


	
    
    
