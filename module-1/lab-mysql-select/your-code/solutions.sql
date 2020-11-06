CREATE DATABASE publications;

USE publications;

# Challenge 1

SELECT authors.au_id AS 'AUTHOR_ID', 
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
titles.title AS 'TITLE',
publishers.pub_name AS 'PUBLISHERS'
FROM authors
INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id;

#Challenge 2 - how many titles each author has published at each publisher.

SELECT authors.au_id AS 'AUTHOR_ID', 
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
COUNT(title) AS 'TITLE_COUNT',
publishers.pub_name AS 'PUBLISHERS'
FROM authors
INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name;

#Challenge 3 - Who are the top 3 authors who have sold the highest number of titles?

SELECT authors.au_id AS 'AUTHOR_ID', 
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
SUM(ytd_sales) AS 'TOTAL'
FROM authors
INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total DESC
LIMIT 3;

#Challenge 4 - 

