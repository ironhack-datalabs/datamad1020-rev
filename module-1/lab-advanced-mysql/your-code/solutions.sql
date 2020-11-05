USE publications;
-- CHALLENGE 1 --

-- STEP 1 --

CREATE TEMPORARY TABLE temp_table_royal
SELECT titles.title_id, authors.au_id, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

-- STEP 2 --
CREATE TEMPORARY TABLE temp_table_royal2
SELECT title_id, au_id, SUM(sales_royalty) as 'sales_royalty'
FROM temp_table_royal
GROUP BY au_id, title_id;

-- STEP 3 --
SELECT au_id, SUM(sales_royalty) as 'total_royalties'
FROM temp_table_royal2
GROUP BY au_id
ORDER BY SUM(sales_royalty) DESC
LIMIT 3;

-- CHALLENGE 2 --

SELECT au_id, SUM(sales_royalty) as 'total_royalties'
FROM (SELECT title_id, au_id, SUM(sales_royalty) as 'sales_royalty'
FROM (SELECT title_id, au_id, SUM(sales_royalty) as 'sales_royalty'
FROM temp_table_royal
GROUP BY au_id, title_id) AS temp_table
GROUP BY au_id, title_id) AS temp_table2

GROUP BY au_id
ORDER BY SUM(sales_royalty) DESC
LIMIT 3;

-- CHALLENGE 3 --
CREATE TABLE most_profiting_authors
SELECT au_id, SUM(sales_royalty) as 'profits'
FROM (SELECT title_id, au_id, SUM(sales_royalty) as 'sales_royalty'
FROM (SELECT title_id, au_id, SUM(sales_royalty) as 'sales_royalty'
FROM temp_table_royal
GROUP BY au_id, title_id) AS temp_table
GROUP BY au_id, title_id) AS temp_table2

GROUP BY au_id
ORDER BY SUM(sales_royalty) DESC
LIMIT 3;


