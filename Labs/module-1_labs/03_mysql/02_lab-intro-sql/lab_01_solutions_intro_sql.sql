/*01*/ 
SELECT MAX(price) max_price, MIN(price) min_price
FROM order_items;

/*02*/
SELECT
	MIN(shipping_limit_date) min_date,
	MAX(shipping_limit_date) max_date
FROM 
	olist.order_items

/*03*/
SELECT 
	customer_state,
	COUNT(customer_unique_id) 		AS no_customer
FROM olist.customers
GROUP BY
	customer_state
ORDER BY 
	no_customer DESC
LIMIT 3;

/*04*/ 


/*05*/
SELECT COUNT(DISTINCT(business_segment))
FROM olist.closed_deals

/*06*/
SELECT 
	business_segment,
	SUM(declared_monthly_revenue)   AS total_revenue
FROM olist.closed_deals
GROUP BY
	business_segment
ORDER BY 
	total_revenue DESC
LIMIT 3;

/*07*/
SELECT COUNT(DISTINCT(review_score))
FROM olist.order_reviews

/*08*/

/*09*/
SELECT review_score,
	COUNT(review_score) AS occurencies
FROM olist.order_reviews
GROUP BY review_score
ORDER BY occurencies DESC
LIMIT 1