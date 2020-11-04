
create table car(
vin_number VARCHAR(25) PRIMARY KEY,
manufacturer VARCHAR(40)  NOT NULL,
model VARCHAR(40) NOT NULL,
man_year YEAR NOT NULL,
color VARCHAR(40) NOT NULL
);

create table salesperson(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(40) NOT NULL,
store VARCHAR(40) NOT NULL);

create table customers(
customer_id INT PRIMARY KEY,
cust_name VARCHAR(40) NOT NULL,
phone_no INT NOT NULL UNIQUE,
email VARCHAR(40) NOT NULL UNIQUE,
address VARCHAR(40) NOT NULL,
state VARCHAR(20),
country VARCHAR(20),
zip_code BIGINT NOT NULL);

create table invoices(
invoice_id INT PRIMARY KEY,
in_date DATE,
car VARCHAR(25),
staff_id INT,
customer_id INT);


ALTER table invoices
add FOREIGN KEY(car)
REFERENCES car(vin_number)
ON DELETE SET NULL;

ALTER table invoices
add FOREIGN KEY(staff_id)
REFERENCES salesperson(staff_id)
ON DELETE SET NULL;

ALTER table invoices
add FOREIGN KEY(customer_id)
REFERENCES customers(customer_id)
ON DELETE SET NULL;

ALTER table car
modify column vin_number varchar(25);
