CREATE DATABASE lab_mysql;

CREATE TABLE cars (
  VIN VARCHAR(40) PRIMARY KEY,
  manufacturer VARCHAR(40) NOT NULL,
  model VARCHAR(40) NOT NULL,
  yr INT NOT NULL,
  color VARCHAR(20)
  );
  
  
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  whole_name VARCHAR(40) NOT NULL,
  phone VARCHAR(40) NOT NULL,
  email VARCHAR(40),
  address VARCHAR(40) NOT NULL,
  city VARCHAR (40) NOT NULL,
  state VARCHAR (40) NOT NULL,
  country VARCHAR (40) NOT NULL,
  postal VARCHAR(20) NOT NULL
  );
  

CREATE TABLE salespersons (
  staff_id INT PRIMARY KEY,
  whole_name VARCHAR(40) NOT NULL,
  store VARCHAR(40) NOT NULL
  );

  
CREATE TABLE invoices (
  invoice_number INT PRIMARY KEY,
  sent_date DATE,
  car INT(10),
  customer_id INT(20),
  sales_person INT(10)
  );
  
  USE lab_mysql;
    
  
INSERT INTO cars VALUES
  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  ('3K096I98690DSBNUP', 'Mini', 'Cooper', 2005, 'Red'),
  ('3K757398581DHSNUP', 'BMW', '3', 2016, 'Black');
  

INSERT INTO customers VALUES
  (10001, "Pablo Picasso", "+34636176382", "pablo.picasso@ironhack.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045");
  
#partial insert
INSERT INTO customers ('customer_id', 'whole_name', 'phone, address', 'city, state', 'country, postal') 
VALUES (10012, "Abe Lincoln", "+34636171232", "Paseo de washington, 14", "Washington", "Seatle", "USA", "Sa123");



INSERT INTO salespersons VALUES
  (00001, "Petey Cruiser", "Madrid"),
  (00002, "Petey Twoser", "Barcelona"),
  (00003, "Petey Threeser", "Paris");
  

INSERT INTO invoices VALUES
  (12345, "2018-08-22", 6, 1, 3),
  (12344, "2018-09-12", 11, 3, 4),
  (12343, "2017-03-26", 12, 9, 7),
  (12342, "2016-12-10", 15, 10, 8);

  