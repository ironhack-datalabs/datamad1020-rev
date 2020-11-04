CREATE DATABASE lab_mysql;

USE lab_mysql;

-- Create cars table
create table cars (
    VIN VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(40) NOT NULL,
    model VARCHAR(40) NOT NULL,
    year INT,
    color VARCHAR(40) NOT NULL
);

-- Create customers table
create table customers (
    customer_ID INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL, 
    phone VARCHAR(40) NOT NULL, 
    email VARCHAR(40) NOT NULL, 
    address VARCHAR(40) NOT NULL, 
    city VARCHAR(40) NOT NULL, 
    state_province VARCHAR(40) NOT NULL, 
    country VARCHAR(40) NOT NULL, 
    zip_postal INT
);

-- Create salespersons table
create table salespersons (
    staff_ID INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    store VARCHAR(40) NOT NULL
);

-- Create invoices table
create table invoices (
    invoice_number INT PRIMARY KEY,
    date VARCHAR(40) NOT NULL,
    car VARCHAR(40) NOT NULL,
    customer VARCHAR(40) NOT NULL,
    sales_ID INT
 );
-- Add foreign key
ALTER TABLE invoices
ADD FOREIGN KEY(sales_id)
REFERENCES salespersons(staff_ID)
ON DELETE SET NULL; 