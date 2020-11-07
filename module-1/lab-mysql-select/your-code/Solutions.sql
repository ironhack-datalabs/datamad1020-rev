#CHALLENGE 1 WHO HAS PUBLISHED, WHAT AND WHERE?

SELECT authors.au_id, au_fname, au_lname, title, country
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN authors
ON titleauthor.au_id = authors.au_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id;


#CHALLENGE 2 WHO HAS PUBLISHED, HOW MANY AND WHERE


SELECT au_fname, au_lname, COUNT(title) AS n_times, country
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id
INNER JOIN authors
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, title, country;


#CHALLENGE 3 BEST SELLING AUTHORS

SELECT au_fname, au_lname, SUM(qty)
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON sales.title_id = titles.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id 
GROUP BY authors.au_id
ORDER BY SUM(qty) DESC
LIMIT 10;
	
#CHALLENGE 4 BEST SELLING AUTHORS BY RANKING

SELECT au_fname, au_lname, SUM(qty)
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON sales.title_id = titles.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id 
GROUP BY authors.au_id
ORDER BY SUM(qty) DESC;

# BONUS MOST PROFITING authors

