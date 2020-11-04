USE lab_mysql;

UPDATE sales
SET store = 'Miami'
WHERE id = 4;

-- check -- 
SELECT * FROM sales; 

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE id = 0;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE id = 1 ;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE id = 2 ;

-- Intenté concatenar queries de esta forma  where id = (SELECT id FROM customers WHERE name = 'Pablo Picasso') pero parece ser que no se puede hacer.. --

SELECT * FROM customers;








