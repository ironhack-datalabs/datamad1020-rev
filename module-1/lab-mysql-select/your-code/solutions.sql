SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
FROM `publishers`
INNER JOIN `titles`
ON publishers.pub_id = titles.pub_id
INNER JOIN `titleauthor`
ON titles.title_id = titleauthor.title_id
INNER JOIN `authors`
ON titleauthor.au_id = authors.au_id;
SELECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, COUNT(title) AS title_count 
FROM `publishers`
INNER JOIN `titles`
ON publishers.pub_id = titles.pub_id
INNER JOIN `titleauthor`
ON titles.title_id = titleauthor.title_id
INNER JOIN `authors`
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name;
SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(ytd_sales) AS total 
FROM `publishers`
INNER JOIN `titles`
ON publishers.pub_id = titles.pub_id
INNER JOIN `titleauthor`
ON titles.title_id = titleauthor.title_id
INNER JOIN `authors`
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total DESC
LIMIT 3;
SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(ytd_sales) AS total 
FROM `publishers`
INNER JOIN `titles`
ON publishers.pub_id = titles.pub_id
INNER JOIN `titleauthor`
ON titles.title_id = titleauthor.title_id
INNER JOIN `authors`
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
HAVING total IS NULL AND total IS NOT NULL
ORDER BY total DESC;
SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(titles.advance*titleauthor.royaltyper/100+titles.royalty*titleauthor.royaltyper/100) AS profit 
FROM `publishers`
INNER JOIN `titles`
ON publishers.pub_id = titles.pub_id
INNER JOIN `titleauthor`
ON titles.title_id = titleauthor.title_id
INNER JOIN `authors`
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY profit DESC
LIMIT 3;