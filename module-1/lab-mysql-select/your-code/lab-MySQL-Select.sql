#CHALLENGE 1
SELECT  authors.au_id, au_lname, au_fname, title, pub_name
FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	INNER JOIN publishers
	ON titles.pub_id = publishers.pub_id
	GROUP BY authors.au_id, title, pub_name;
	
#CHALLENGE 2	
SELECT  authors.au_id, au_lname, au_fname, pub_name, COUNT(title) AS title_count
FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	INNER JOIN publishers
	ON titles.pub_id = publishers.pub_id
	GROUP BY authors.au_id, title, pub_name;
	
#CHALLENGE 3
SELECT authors.au_id, au_lname, au_fname, SUM(qty) AS total
FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	INNER JOIN sales
	ON sales.title_id = titles.title_id
	GROUP BY authors.au_id
	ORDER BY total DESC
	LIMIT 3;
	
#CHALLENGE 4
SELECT authors.au_id, au_lname, au_fname, SUM(qty) AS total
FROM titleauthor
	RIGHT JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	RIGHT JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN sales
	ON sales.title_id = titles.title_id
	GROUP BY authors.au_id
	ORDER BY total DESC;
	
	
