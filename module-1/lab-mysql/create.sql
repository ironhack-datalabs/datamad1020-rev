CREATE DATABASE lab_mysql;
USE lab_mysql;
-- create table cara
CREATE TABLE Cars (
VIN INT PRIMARY KEY,
Manufacter VARCHAR(40) NOT NULL,
Model VARCHAR(40) NOT NULL,
year_car INT,
color VARCHAR(30) NOT NULL
);

-- create table customers
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(40) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(40),
  address VARCHAR(30) NOT NULL,
  city VARCHAR(30) NOT NULL,
  state VARCHAR(40) NOT NULL,
  country VARCHAR(40) NOT NULL,
  postal_code VARCHAR(20) NOT NULL
  );
-- create table Salespersons
CREATE TABLE Salespersons (
  staff_ID INT PRIMARY KEY,
  first_name VARCHAR(40) NOT NULL,
  store VARCHAR(20) NOT NULL
  );
  -- create table Invoices
CREATE TABLE Invoices (
  invoice_number INT PRIMARY KEY,
  date INT,
  car VARCHAR(30) NOT NULL,
  salesperson VARCHAR(30) NOT NULL
  );
  -- relation
ALTER TABLE Salespersons
ADD FOREIGN KEY (Cars)
REFERENCES Cars(VIN)
ON DELETE CASCADE;

ALTER TABLE Salespersons
ADD FOREIGN KEY (Customers)
REFERENCES Customers(Customer_ID)
ON DELETE CASCADE;

ALTER TABLE Customer
ADD FOREIGN KEY Cars
REFERENCES Cars(VIN)
ON DELETE CASCADE;

ALTER TABLE Cars
ADD FOREIGN KEY Invoice
REFERENCES Invoice(Invoice_number)
ON DELETE CASCADE;