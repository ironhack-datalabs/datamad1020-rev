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
