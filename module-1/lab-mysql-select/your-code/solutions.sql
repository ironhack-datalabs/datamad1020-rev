# Challenge1
SELECT titleauthor.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, title as TITLE, pub_name AS PUBLISHER
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles 
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id;

# Challenge2
SELECT titleauthor.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, pub_name AS PUBLISHER, COUNT(title) AS TITLE_COUNT
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY  titleauthor.au_id, au_lname, au_fname, title,pub_name;

# Challenge3
SELECT titleauthor.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, SUM(title) AS TOTAL
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY titleauthor.au_id, au_lname, au_fname;