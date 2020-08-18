/*09*/
SELECT seller_state,
		COUNT(DISTINCT(seller_city)) AS no_cities
FROM olist.sellers
GROUP BY seller_state
ORDER BY no_cities DESC
LIMIT 3;
/*09*/
SELECT seller_state
		COUNT(DISTINCT(seller_city))
FROM olist.sellers
GROUP BY seller_state;
/*09*/
SELECT *
FROM olist.sellers
GROUP BY seller_state;
/*09*/
SELECT *
FROM olist.sellers;
/*08*/
SELECT order_id,		
		MAX(`payment_value`) as max_payed
FROM olist.order_payments
GROUP BY order_id
ORDER BY max_payed DESC
LIMIT 1;
/*08*/
SELECT order_id		
		MAX(`payment_value`) as max_payed
FROM olist.order_payments
GROUP BY order_id
ORDER BY max_payed DESC
LIMIT 1;
/*07*/
SELECT payment_type,
		COUNT(order_id)		AS no_ids,
		COUNT(payment_type)
FROM olist.order_payments
GROUP BY payment_type
ORDER BY no_ids DESC
LIMIT 1;
/*07*/
SELECT*
FROM olist.order_payments;
/*06*/
SELECT product_category_name,
		MAX(product_length_cm) max_length,
		MAX(product_height_cm) max_heigth,
		MAX(product_width_cm) max_width
FROM olist.products
GROUP BY product_category_name
ORDER BY max_length DESC,
		max_heigth DESC,
		max_width DESC
/*07*/
SELECT*
FROM olist.order_payments;
/*06*/
SELECT product_category_name,
		MAX(product_length_cm) max_length,
		MAX(product_height_cm) max_heigth,
		MAX(product_width_cm) max_width
FROM olist.products
GROUP BY product_category_name
ORDER BY max_length DESC,
		max_heigth DESC,
		max_width DESC;
/*06*/
SELECT product_category_name,
		MAX(product_length_cm) max_length,
		MAX(product_height_cm) max_heigth,
		MAX(product_width_cm) max_width
FROM olist.products
GROUP BY product_category_name;
/*06*/
SELECT product_category_name,
		MAX(product_length_cm) max_length,
		MAX(product_height_cm) max_heigth,
		MAX(product_width_cm) max_width
		SUM(max_length, max_heigth, max_width)
FROM olist.products
GROUP BY product_category_name;
/*06*/
SELECT product_category_name,
		MAX(product_length_cm) max_length,
		MAX(product_heigth_cm) max_heigth,
		MAX(product_width_cm) max_width
FROM olist.products
GROUP BY product_category_name;
/*06*/
SELECT *
FROM olist.products;
/*06*/
SELECT *
FROM olist.products
GROUP BY product_category_name;
/*06*/
SELECT product_category_name
FROM olist.products
GROUP BY product_category_name;
/*06*/
SELECT 
		product_category_name,
FROM olist.products
GROUP BY product_category_name;
/*05*/
SELECT 
		product_category_name,
		MAX(product_weight_g) MAX_weight
FROM olist.products
GROUP BY product_category_name
ORDER BY MAX_weight DESC
LIMIT 1;
/*05*/
SELECT 
		product_category_name,
		MAX(product_weight_g) MAX_weight
FROM olist.products
GROUP BY product_category_name
ORDER BY MAX_weight DESC
LIMIT 3;
/*05*/
SELECT 
		product_category_name,
		MAX(product_weight_g) MAX_weight
FROM olist.products
GROUP BY product_categhory_name
ORDER BY MAX_weight DESC
LIMIT 3