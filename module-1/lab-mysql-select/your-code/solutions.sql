USE publications;
SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, titles.title AS TITLE, publishers.pub_name AS PUBLISHER
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id;


SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, publishers.pub_name AS PUBLISHER, count(titles.title_id) AS TITLE_COUNT
FROM authors 
INNER JOIN titleauthor ON authors.au_id=titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id=titles.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, publishers.pub_id
ORDER BY TITLE_COUNT DESC;


SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, sum(sales.qty) AS TOTAL
FROM authors
INNER JOIN titleauthor ON titleauthor.au_id = authors.au_id
INNER JOIN titles ON titles.title_id = titleauthor.title_id
INNER JOIN sales ON sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;


SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, sum(sales.qty) AS TOTAL
FROM authors
LEFT JOIN titleauthor ON titleauthor.au_id = authors.au_id
LEFT JOIN titles ON titles.title_id = titleauthor.title_id
LEFT JOIN sales ON sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC;



