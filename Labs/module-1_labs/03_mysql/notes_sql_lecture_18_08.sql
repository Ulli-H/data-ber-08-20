USE olist;

SELECT *
FROM sellers
LIMIT 1000;

SELECT 
	COUNT(*),
	COUNT(DISTINCT seller_id)
FROM sellers;

SELECT *
FROM order_items
ORDER BY order_id
LIMIT 1000;

SELECT DISTINCT 
	seller_id,
	order_id
FROM order_items;

-- 1st approach : combine both datasets with a nested subquery

SELECT 
		s.seller_state,
		s.seller_id,
		so.order_id
FROM sellers s
	INNER JOIN (SELECT DISTINCT 
				seller_id,
				order_id
		FROM order_items) so
	ON s.seller_id = so.seller_id
LIMit 1000;

-- 2nd approach : create temporary table

CREATE TEMPORARY TABLE seller_order_links AS 
		SELECT DISTINCT 
			seller_id,
			order_id
		FROM order_items;
		
SELECT 
	s.seller_state,
	s.seller_id,
	sol.order_id
FROM sellers s
	INNER JOIN seller_order_links as sol
	ON s.seller_id = sol.`seller_id`
LIMIT 1000;

-- approach 3: common table expression (CTE) aka WITH table

WITH seller_order_links2 as (
	SELECT DISTINCT 
		seller_id,
		order_id
	FROM order_items)
SELECT 
	s.seller_state,
	s.seller_id,
	sol.order_id
FROM sellers s
	INNER JOIN seller_order_links2 sol
	ON s.seller_id = sol.seller_id
LIMIT 1000;