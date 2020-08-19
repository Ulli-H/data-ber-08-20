USE publications;

/* challenge 01 */ 

SELECT *
FROM authors;

SELECT *
FROM publishers;


SELECT 
 a.au_id,
 a.au_lname,
 a.au_fname,
 t.title,
 p.pub_name
FROM authors a
	INNER JOIN titleauthor ta
	ON a.au_id = ta.au_id
	INNER JOIN titles t
	ON ta.title_id = t.title_id
	INNER JOIN publishers p
	ON t.pub_id = p.pub_id
ORDER BY a.au_lname DESC; 

/* challenge 02 */

SELECT 
 a.au_id,
 a.au_lname,
 a.au_fname,
 p.pub_name,
 COUNT(t.title_id)
FROM authors a
	INNER JOIN titleauthor ta
	ON a.au_id = ta.au_id
	INNER JOIN titles t
	ON ta.title_id = t.title_id
	INNER JOIN publishers p
	ON t.pub_id = p.pub_id
GROUP BY p.pub_name
ORDER BY a.au_lname DESC; 

select *
FROM titleauthor;

