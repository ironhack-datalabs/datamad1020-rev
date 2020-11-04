
USE lab_mysql;

### esto deberia inicializar el auto_increment en 0 sin embargo no lo hace inicia en 1 :/ (tuve que modificar el ID directamente en las tablas) ###
ALTER TABLE cars AUTO_INCREMENT = 0;
ALTER TABLE customers AUTO_INCREMENT = 0;
ALTER TABLE salespersons AUTO_INCREMENT = 0;
ALTER TABLE invoices AUTO_INCREMENT = 0;

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Customers (Customer_ID,	Name, Phone, Email, Address, City, State_or_Province, Country, Postal)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-' , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

### la longitud de Phone era muy corta por lo que tuve que aumentarla para agregar los datos ###
ALTER TABLE Customers MODIFY Phone VARCHAR (12);


INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (Invoice_Number, Date, Car, Customer, Sale_Person)
VALUES
(852399038, 22-08-2018, 0, 1, 3),
(731166526, 31-12-2018, 3, 0, 5),
(271135104, 22-01-2019, 2, 2, 7);
### la fecha tenia un formato distinto a date por lo cual tuve que modificar Date a varchar ###
ALTER TABLE invoices MODIFY date VARCHAR (12);

### me percate que se me olvido colocar en las relaciones ON DELETE CASCADE ###
ALTER TABLE `invoices` DROP FOREIGN KEY `invoices_ibfk_1`;
ALTER TABLE `invoices` DROP FOREIGN KEY `invoices_ibfk_2`;
ALTER TABLE `invoices` DROP FOREIGN KEY `invoices_ibfk_3`;
### elimine las relaciones y las volvi a crear ###

ALTER TABLE Invoices
ADD FOREIGN KEY (Car)
REFERENCES Cars (ID)
ON DELETE CASCADE;

ALTER TABLE Invoices
ADD FOREIGN KEY (Customer)
REFERENCES Customers (ID)
ON DELETE CASCADE;

ALTER TABLE Invoices
ADD FOREIGN KEY (Sale_Person)
REFERENCES Salespersons (ID)
ON DELETE CASCADE;
