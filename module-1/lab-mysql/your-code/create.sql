# CREATE THE DB

CREATE DATABASE car_dealership;
USE car_dealership;

#CREATE THE TABLES
CREATE TABLE cars(
	VIN VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    year_vin YEAR,
    color VARCHAR(10)
);

CREATE TABLE customer_id(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50),
    address VARCHAR(40),
    city VARCHAR(40),
    state_province 	VARCHAR(20),
    country VARCHAR(20),
    postal VARCHAR(5)
);

CREATE TABLE salespersons(
	staff_id INT PRIMARY KEY,
    name_sale VARCHAR(40),
    store VARCHAR(20)
);

CREATE TABLE invoices(
    invoice_number INT  PRIMARY KEY,
    data_invoice DATE,
    car VARCHAR(40),
    customer INT,
    salesperson INT
);
DROP TABLE invoices;
###################################
#      CREATE THE RELATIONHIPS    #
###################################

ALTER TABLE invoices 
ADD FOREIGN KEY(car)
REFERENCES cars(VIN)
ON DELETE SET NULL; 

ALTER TABLE invoices
ADD FOREIGN KEY (customer)
REFERENCES customer_id(customer_id)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (salesperson)
REFERENCES salespersons(staff_id)
ON DELETE CASCADE; 