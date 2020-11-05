#BONUS
#Step 1
SELECT titles.title_id, authors.au_id, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	INNER JOIN sales
	ON sales.title_id = titles.title_id;


#Step 2
SELECT titles.title_id, authors.au_id, SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN `authors`
	ON titleauthor.au_id = authors.au_id
	INNER JOIN sales
	ON sales.title_id = titles.title_id
	GROUP BY titles.title_id, authors.au_id;
	
#Step 3
SELECT authors.au_id, (sales_royalty + titles.advance) AS profits
FROM (
	SELECT titles.title_id, authors.au_id, SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
	FROM titleauthor
		INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN `authors`
		ON titleauthor.au_id = authors.au_id
		INNER JOIN sales
		ON sales.title_id = titles.title_id
		GROUP BY titles.title_id, authors.au_id) AS s;


	



