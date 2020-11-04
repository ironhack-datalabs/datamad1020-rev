INSERT INTO car
VALUES
('3K096I98581DHSNUP', 'Audi', 'A1', 2015,'red'),
('ZM8G7BEUQZ97IH46V', 'Toyota', 'Yaris',2016, 'blue'),
('RKXVNNIHLVVZOUB4M', 'Seat', 'León',  2016, 'white'),
('HKNDGS7CU31E9Z7JW', 'Volvo', 'XC-90', 2016, 'dark blue'),
('DAM41UDN3CHU2WVF6', 'Porsche', 'Cayenne Turbo', 2017, 'black'),
('ESP41ETZ3GTM2WVF7', 'Lamborghine', 'Gallard0', 2017, 'yellow');

INSERT INTO customers
VALUES 
(2, 'José Fernández', 656123098, 'jfern@hotmail.com', 'Calle Costa Brava 19', 'Madrid', 'Spain', 28034),
(3, 'Antonio García', 634728945, 'elantong@gmail.com', 'Calle Bravo Murillo 4', 'Madrid', 'Spain', 28903),
(4, 'Silvia Bermú', 690143267, 'silvib@hotmail.com', 'Avenida de Burgos 15', 'Madrid', 'Spain', 28009),
(5, 'Ana Loira', 658912034, 'a.loira@lazard.com', 'Calle Diego de León 36', 'Madrid', 'Spain', 28015),
(6, 'James Lanton', 612389756, 'james.lanton@yahoo.com', 'CallePuerto Bermeo 6', 'Madrid', 'Spain', 28040),
(7, 'Dimitri Yoshenko', 666798102, 'russian@hotmail.com', 'Paseo de la Habana 13', 'Madrid', 'Spain', 28025);



INSERT INTO salesperson
VALUES 
(0023, 'Ramón Lezo', 'Madrid'),
(0024, 'Isabel Egea', 'Toledo'),
(0025, 'Lucas Blanco', 'Madrid'),
(0026, 'Rocio Montes', 'Pozuelo'),
(0027, 'Francisco Fuertes', 'Madrid'),
(0035, 'Antonio de María', 'Toledo');


INSERT INTO invoices
values
(113, '2015-11-13', '3K096I98581DHSNUP', 0023, 2),
(114, '2016-04-20', 'ZM8G7BEUQZ97IH46V', 0024, 3),
(115,  '2016-07-11', 'RKXVNNIHLVVZOUB4M', 0025, 4),
(116,  '2016-10-27', 'HKNDGS7CU31E9Z7JW', 0026, 5),
(117, '2017-01-14', 'DAM41UDN3CHU2WVF6', 0027, 6),
(118, '2017-02-03', 'ESP41ETZ3GTM2WVF7', 0035,7);


SELECT * FROM invoices
