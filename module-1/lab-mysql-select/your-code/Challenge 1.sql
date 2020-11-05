use publications;

SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME', title AS 'TITLE', pub_name AS 'PUBLISHER'
FROM AUTHORS AS a
INNER JOIN titleauthor AS ta
ON a.au_id = ta.au_id
INNER JOIN titles AS tl
ON ta.title_id = tl.title_id
INNER JOIN publishers AS ps
ON tl.pub_id = ps.pub_id
ORDER BY a.au_id;
