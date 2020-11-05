USE publications;
SELECT * FROM authors;
SELECT * FROM titleauthor;
SELECT * FROM titles;
SELECT * FROM publishers;

#Challenge 1 - Who Have Published What At Where?

SELECT  titleauthor.au_id AS AUTHOR_ID ,au_lname AS LAST_NAME, au_fname AS FIRST_NAME, title AS TITLE,  pub_name AS PUBLISHER
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id;

#Challenge 2 - Who Have Published How Many At Where?
SELECT titleauthor.au_id AS AUTHOR_ID , au_lname AS LAST_NAME, au_fname AS FIRST_NAME, title AS TITLE, pub_name AS PUBLISHER, COUNT(titles.title)
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
GROUP BY  titleauthor.au_id, au_lname, au_fname, title,pub_name;

#Challenge 3 - Best Selling Authors
SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, COUNT(titles.title) AS TOTAL
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY COUNT(titles.title) DESC
LIMIT 3;

#Challenge 4 - Best Selling Authors Ranking

SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, COUNT(titles.title) AS TOTAL
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY COUNT(titles.title) DESC;








