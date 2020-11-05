
----CHALLENGE 1----

USE publications;

SELECT authors.au_id AS 'AUTHOR ID',
concat(authors.au_lname," ", authors.au_fname) AS 'FULLNAME',
titles.title AS 'TITLE',
publishers.pub_name AS 'PUBLISHER'
FROM authors

INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id;

----CHALLENGE 2----

SELECT authors.au_id AS 'AUTHOR ID',
concat(authors.au_lname," ", authors.au_fname) AS 'FULLNAME',
COUNT(titles.title) AS 'TITLE COUNT',
publishers.pub_name AS 'PUBLISHER'
FROM authors


INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY publishers.pub_id, authors.au_id;

----CHALLENGE 3----

SELECT authors.au_id AS 'AUTHOR ID',
concat(authors.au_lname," ", authors.au_fname) AS 'FULLNAME',
sum(sales.qty) AS 'TOTAL'
FROM authors

INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON sales.title_id = titles.title_id

GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;


----CHALLENGE 4----

SELECT authors.au_id AS 'AUTHOR ID',
concat(authors.au_lname," ", authors.au_fname) AS 'FULLNAME',
IFNULL(sum(sales.qty),0) AS 'TOTAL'                             
FROM authors

RIGHT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titles.title_id = titleauthor.title_id
RIGHT JOIN sales
ON sales.title_id = titles.title_id

GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 23;


----BONUS---
SELECT authors.au_id AS 'AUTHOR ID',
concat(authors.au_lname," ", authors.au_fname) AS 'FULLNAME',
IFNULL(SUM(titles.advance + titles.ytd_sales * titles.price * titles.royalty/100), 0) AS PROFIT
FROM authors

RIGHT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titles.title_id = titleauthor.title_id
RIGHT JOIN sales
ON sales.title_id = titles.title_id

GROUP BY authors.au_id
ORDER BY PROFIT DESC
LIMIT 3;
