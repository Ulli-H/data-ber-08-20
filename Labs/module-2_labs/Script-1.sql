USE olist;
	
SELECT 
	DATE(order_purchase_timestamp) 	AS date_id,
	COUNT(order_id )				AS no_of_orders
FROM orders o
WHERE order_purchase_timestamp 	>= '2017-01-01'
GROUP BY 1
ORDER BY 1
LIMIT 10;

SELECT 
	YEAR (o.order_purchase_timestamp) 	AS year,
	MONTH (o.order_purchase_timestamp) 	AS month,
	COUNT( DISTINCT o.order_id )		AS orders,
	sum(1)								AS items_sold,
	COUNT( DISTINCT oi.seller_id)		AS sellers,
	SUM( oi.price )						AS revenue
FROM orders o
	INNER JOIN order_items oi 
	ON o.order_id = oi.order_id 
WHERE o.order_purchase_timestamp >= '2017-01-01'
	AND o.order_purchase_timestamp  < '2018-09-01'
GROUP BY 1, 2
LIMIT 10;

SELECT 
	DATE_FORMAT (o.order_purchase_timestamp, '%Y-%m-01') AS month_id,
	COUNT( o.order_id )		AS orders,
	c2.customer_state 
FROM orders o
	INNER JOIN order_items oi 
	ON o.order_id = oi.order_id 
	INNER JOIN customers c2 
	ON o.customer_id = c2.customer_id 
WHERE o.order_purchase_timestamp BETWEEN 
	(CAST ('2017-01-01' AS DATE) 
	AND CAST( '2018-09-01' AS DATE))
GROUP BY c2.customer_state, month_id
ORDER BY month_id, customer_state ;
