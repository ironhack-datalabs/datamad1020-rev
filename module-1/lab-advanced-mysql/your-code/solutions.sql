SELECT titleauthor.title_id AS "TITLE ID", authors.au_id AS "AUTHOR ID", titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "ROYALTY OF EACH SALE"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id
			JOIN titles ON titleauthor.title_id = titles.title_id 
			JOIN sales ON titleauthor.title_id = sales.title_id;

SELECT titleauthor.title_id AS "TITLE ID", authors.au_id AS "AUTHOR ID", sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS "AGREGATED ROYALTIES"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id
			 JOIN titles ON titleauthor.title_id = titles.title_id 
			 JOIN sales ON titleauthor.title_id = sales.title_id
GROUP BY titleauthor.title_id, authors.au_id;


SELECT authors.au_id AS "AUTHOR ID", sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 - titles.advance) AS "PROFITS"
FROM AUTHORS JOIN titleauthor ON authors.au_id = titleauthor.au_id
			 JOIN titles ON titleauthor.title_id = titles.title_id 
			 JOIN sales ON titleauthor.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY profits DESC
LIMIT 3;