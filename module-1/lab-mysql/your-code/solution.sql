#Challenge 1 - Who Have Published What At Where?

SELECT authors.au_id AS 'author ID', au_lname AS 'last name', au_fname AS 'first name', title, pub_name AS publisher
FROM titles 
JOIN titleauthor
ON titles.title_id = titleauthor.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
JOIN authors
ON titleauthor.au_id = authors.au_id
ORDER BY au_lname asc;

#Challenge 2 - Who Have Published How Many At Where?

SELECT authors.au_id AS 'author ID', au_lname AS 'last name', au_fname AS 'first name' , pub_name AS publisher, COUNT(title) AS 'title count'
FROM titles 
JOIN titleauthor
ON titles.title_id = titleauthor.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
JOIN authors
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id
ORDER BY 'first name' ASC;

#Challenge 3 - Best Selling Authors

SELECT authors.au_id AS 'author ID', au_lname AS 'last name', au_fname AS 'first name', SUM(qty)
FROM sales
JOIN titleauthor
ON sales.title_id = titleauthor.title_id
JOIN authors
ON titleauthor.au_id = authors.au_id
GROUP BY  authors.au_id  ##muy importane hacer refencia a la tabla de la que se saca la columna##
ORDER BY SUM(qty) DESC
LIMIT 3;

#Challenge 4 - Challenge 4 - Best Selling Authors Ranking

SELECT authors.au_id AS 'author ID', au_lname AS 'last name', au_fname AS 'first name', SUM(qty)
FROM sales
INNER JOIN titleauthor
ON sales.title_id = titleauthor.title_id
RIGHT JOIN authors       ##el right join va a mostrar todos los valores de la tabla izquierda, en este caso la de SALES
						 ##es importante hacer esto porque si no salen menos autores, ya que elimina los 4 que no tienen ventas
ON titleauthor.au_id = authors.au_id
GROUP BY  authors.au_id  ##muy importane hacer refencia a la tabla de la que se saca la columna##
ORDER BY SUM(qty) DESC;

#Bonus Challenge - Most Profiting Authors
#Había puesto todo el query pero tenía la parte de los royalties incompleta. Me faltaba (*sales.qty*titles.price) que lo he visto al ver el solutions
 SELECT authors.au_id, au_lname, au_fname,  (titles.advance + (titleauthor.royaltyper/100)*titles.royalty*sales.qty*titles.price) AS profit
 FROM sales
 JOIN titles
 ON sales.title_id = titles.title_id
 JOIN titleauthor
 ON titles.title_id = titleauthor.title_id
 RIGHT JOIN authors
 ON titleauthor.au_id = authors.au_id
 GROUP BY authors.au_id 
 ORDER BY profit DESC
 LIMIT 3;










