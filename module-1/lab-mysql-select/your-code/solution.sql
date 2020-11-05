USE publications;
#Challenge 1

SElECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
FROM titles
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id
INNER JOIN `authors` ON authors.au_id = titleauthor.au_id;

#Challenge 2

SElECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, COUNT(title) AS title_count
FROM titles
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id
INNER JOIN `authors` ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name;

#Challenge 3

SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(ytd_sales) AS total
FROM titles
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id
INNER JOIN `authors` ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total desc
LIMIT 3;

#Challenge 4

SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(ytd_sales) AS total
FROM titles
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id
INNER JOIN `authors` ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total desc;

# No consigo encontrar la manera de que me aparezcan los "null". Además, tampoco encuentro la forma de cambiarlo a "0"