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

  