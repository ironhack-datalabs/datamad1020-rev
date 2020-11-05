#chal 1

USE publications;

SELECT  authors.au_id AS "AUTHOR ID",
		authors.au_lname AS "LAST NAME",
		authors.au_fname AS "FIRST NAME",
		titles.title AS "TITLE",
		publishers.pub_name AS "PUBLISHER"
FROM authors JOIN titleauthor on authors.au_id = titleauthor.au_id 
			JOIN titles on titleauthor.title_id = titles.title_id 
			JOIN publishers on titles.pub_id = publishers.pub_id;


#chal 2
SELECT  authors.au_id AS "AUTHOR ID",
		authors.au_lname AS "LAST NAME",
		authors.au_fname AS "FIRST NAME",
		publishers.pub_name AS 'PUBLISHER',
		count(titles.title) AS "TITLE COUNT"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id 
			JOIN titles ON titleauthor.title_id = titles.title_id 
			JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, publishers.pub_name;


#chal 3
SELECT  authors.au_id AS "AUTHOR ID",
		authors.au_lname AS "LAST NAME",
		authors.au_fname AS "FIRST NAME",
		SUM(sales.qty) AS "TOTAL"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id
			JOIN sales ON titleauthor.title_id = sales.title_id 
GROUP BY authors.au_id
ORDER BY total DESC
LIMIT 3;


#chal 4
SELECT  authors.au_id AS "AUTHOR ID",
		authors.au_lname AS "LAST NAME",
		authors.au_fname AS "FIRST NAME",
		SUM(sales.qty) AS "TOTAL"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id
			JOIN sales ON titleauthor.title_id = sales.title_id 
GROUP BY authors.au_id
HAVING total >= 0
ORDER BY total DESC;

