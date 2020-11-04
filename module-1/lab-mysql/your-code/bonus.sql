USE lab_mysql;
UPDATE Salespersons
SET  Store = 'Miami'
WHERE id = 4;

update Customers
set Email = 'ppicasso@gmail.com'
where Name = 'Pablo Picasso';

update Customers
set email = 'lincoln@us.gov'
where Name = 'Abraham Lincoln';

update Customers
set email = 'hello@napoleon.me'
where Name = 'Napoléon Bonaparte';

DELETE FROM cars WHERE id = 4;
