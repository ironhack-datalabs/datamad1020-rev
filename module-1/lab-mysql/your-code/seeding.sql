### IMPORTAR VALORES A TABLAS ###

USE lab_mysql;

INSERT INTO cars VALUES
(3K096I98581DHSNUP, 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(ZM8G7BEUQZ97IH46V, 'Peugeot', 'Rifter', '2019', 'Red'),
(RKXVNNIHLVVZOUB4M, 'Ford', 'Fusion', '2018', 'White'),
(HKNDGS7CU31E9Z7JW, 'Toyota', 'RAV4', '2018', 'Silver'),
(DAM41UDN3CHU2WVF6, 'Volvo', 'V60', '2019', 'Gray');


INSERT INTO customer VALUES
(10001, '+34 636 17 63 82', 'picasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045', '3K096I98581DHSNUP'),
(20001, '+1 305 907 7086', 'lincoln@hotmail.com', '120 SW 8th St', NULL, NULL, NULL, '33130', 'ZM8G7BEUQZ97IH46V'),
(30001, '+33 1 79 75 40 00', 'napoleon@yahoo.com', '40 Rue du Colisée', NULL, NULL, NULL, '75008', 'RKXVNNIHLVVZOUB4M');

INSERT INTO salespersons VALUES
(1000011, 'Maria', 'Madrid'),
(2000022, 'Pedro', 'Sevilla'),
(3000033, 'Gonzalo', 'Madrid'),
(4000044,	'Gail', 'Paris'),
(5000055,	'Turner', 'Mimia'),
(6000066,	'Bob', 'Mexico City'),
(7000077,	'Walter', 'Amsterdam'),
(8000088,	'Shonda Leer', 'São Paulo');

INSERT INTO invoices VALUES
(852399039, '2018-08-22', '0', '1', '3'),
(731166527, '2018-12-31', '3', '0', '5'),
(271135105, '2019-01-22', '2', '2', '7');