CREATE DATABASE lab_mysql;
	USE lab_mysql;
CREATE TABLE Cars(
	ID INT PRIMARY KEY,
	VIN VARCHAR(40) UNIQUE,
	Manufacturer VARCHAR(30) NOT NULL,
	Model VARCHAR(40) NOT NULL,
	Year INT,
	Color VARCHAR(20) NOT NULL
	);
CREATE TABLE Customers(
	ID INT PRIMARY KEY,
	Custormer_ID INT UNIQUE,
	Name VARCHAR(40) NOT NULL,
	Phone INT UNIQUE,
	Email VARCHAR(40),
	Adress VARCHAR(40) NOT NULL,
	City VARCHAR(30) NOT NULL,
	State_Province VARCHAR(30) NOT NULL,
	Country VARCHAR(30) NOT NULL,
	Postal INT
	);
CREATE TABLE Salespersons(
	ID INT PRIMARY KEY,
	Staff_ID INT UNIQUE,
	Name VARCHAR(40) NOT NULL,
	Store VARCHAR(30) NOT NULL
	);
CREATE TABLE Invoices(
	ID INT PRIMARY KEY,
	Invoice_Number INT UNIQUE,
	Date DATE,
	Car INT,
	Customer INT,
	Sales_Person INT
	);
INSERT INTO Cars VALUES
(0,	"3K096I98581DHSNUP", "Volkswagen", "Tiguan",	2019,	"Blue"),
(1,	"ZM8G7BEUQZ97IH46V", "Peugeot", 	"Rifter",	2019,	"Red"),
(2,	"RKXVNNIHLVVZOUB4M", "Ford",	"Fusion",	2018,	"White"),
(3,	"HKNDGS7CU31E9Z7JW", "Toyota",	"RAV4",	2018,	"Silver"),
(4,	"DAM41UDN3CHU2WVF6", "Volvo",	"V60",	2019,	"Gray"),
(5,	"DAM41UDN3CHU2OVF6", "Volvo	V60", "Cross Country",	2019, "Gray");
SELECT * FROM Cars;

INSERT INTO Customers VALUES
(0, 10001,	"Pablo Picasso", 636176382,	"-",	"Paseo de la Chopera, 14",	"Madrid",	"Madrid",	"Spain"	,28045),
(1,	20001,	"Abraham Lincoln", 069077086,	"-",	"120 SW 8th St",	"Miami",	"Florida",	"United States",	33130),
(2,	30001,	"Napoléon Bonaparte",	679754000,	"-",	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	75008);
SELECT * FROM Customers;

INSERT INTO Salespersons VALUES
(0,	00001,	"Petey Cruiser",	"Madrid"),
(1,	00002,	"Anna Sthesia",	"Barcelona"),
(2,	00003,	"Paul Molive",	"Berlin"),
(3,	00004,	"Gail Forcewind",	"Paris"),
(4,	00005,	"Paige Turner",	"Mimia"),
(5,	00006,	"Bob Frapples",	"Mexico City"),
(6,	00007,	"Walter Melon",	"Amsterdam"),
(7,	00008,	"Shonda Leer",	"São Paulo");
SELECT * FROM Salespersons;

INSERT INTO Invoices VALUES
(0,	852399038,	"2018-08-22",	0,	1,	3),
(1,	731166526,	"2018-12-31",	3,	0,	5),
(2,	271135104,	"2019-01-22",	2,	2,	7);
SELECT * FROM Invoices;