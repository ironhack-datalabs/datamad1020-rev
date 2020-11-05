USE publications;

SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME',
COALESCE(SUM(ytd_sales),0) AS TOTAL
FROM AUTHORS AS a
INNER JOIN titleauthor AS ta
ON a.au_id = ta.au_id
INNER JOIN titles AS tl
ON ta.title_id = tl.title_id
INNER JOIN publishers AS ps
ON tl.pub_id = ps.pub_id
UNION
SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME',
COALESCE(SUM(ytd_sales),0) AS TOTAL
FROM AUTHORS AS a
LEFT JOIN titleauthor AS ta
ON a.au_id = ta.au_id
LEFT JOIN titles AS tl
ON ta.title_id = tl.title_id
LEFT JOIN publishers AS ps
ON tl.pub_id = ps.pub_id
GROUP BY (a.au_id)
ORDER BY total DESC
LIMIT 23;

