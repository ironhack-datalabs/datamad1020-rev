use publications;

### ACA REALICE UNA TABLA DONDE CALCULABA LAS GANANCIAS POR TITLE, ACA MULTIPLIQUE EL PRECIO UNITARIO POR LA CANTIDA DE VENTAS, LUEGO POR EL ROYALTY Y EL ROYALTYPER  Y ESO LO DIVIDO ENTRE 10000 PORQUE LAS DOS ULTIMAS COLUMNAS SON EN PORCENTAJE, LUEGO A ESO LE SUME EL AVANCE QUE LE DA EL EDITOR)
SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME', title AS 'TITLE', pub_name AS 'PUBLISHER', (((PRICE * YTD_SALES * ROYALTY * royaltyper)/10000) + advance) AS 'GANANCIA'
FROM AUTHORS AS a
INNER JOIN titleauthor AS ta
ON a.au_id = ta.au_id
INNER JOIN titles AS tl
ON ta.title_id = tl.title_id
INNER JOIN publishers AS ps
ON tl.pub_id = ps.pub_id
ORDER BY a.au_id;


select *
from titleauthor;

### ACA REALIZO LA MISMA OPERACION PERO SUMO LAS GANANCIAS POR AUTOR PARA DETERMINAR QUIEN TUVO MAYOR GANANCIA
SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME', title AS 'TITLE', pub_name AS 'PUBLISHER',
SUM((((PRICE * YTD_SALES * ROYALTY * royaltyper)/10000) + advance)) AS TOTAL
FROM AUTHORS AS a
INNER JOIN titleauthor AS ta
ON a.au_id = ta.au_id
INNER JOIN titles AS tl
ON ta.title_id = tl.title_id
INNER JOIN publishers AS ps
ON tl.pub_id = ps.pub_id
GROUP BY a.au_id
ORDER BY TOTAL DESC
LIMIT 3;