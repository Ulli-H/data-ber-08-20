/*01*/
SELECT client_id,
	district_id
FROM bank.client 
WHERE district_id = '1'
ORDER BY client_id ASC 
LIMIT 5;
/*02*/
SELECT client_id,
	district_id
FROM bank.client 
WHERE district_id = '72'
ORDER BY client_id DESC
LIMIT 1;
/*03*/
SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;
/*04*/
SELECT status 
FROM bank.loan
GROUP BY status
ORDER BY status; 
/*05*/
SELECT loan_id,
		MAX(payments) max_payment
FROM bank.loan
GROUP BY loan_id
ORDER BY max_payment DESC
LIMit 1;
/*06*/
SELECT amount,
account_id
FROM bank.loan
ORDER BY account_id 
LIMIT 5;
/*07*/
SELECT account_id,
		amount
FROM bank.loan
WHERE duration = '60'
ORDER BY amount
LIMIT 5;
/*08*/
SELECT DISTINCT k_symbol
FROM bank.order
ORDER BY k_symbol;
/*09*/
SELECT order_id
FROM bank.order
WHERE account_id = '34';
/*10*/
SELECT account_id
FROM bank.order
WHERE order_id >= '29540' AND order_id <= '29560'
GROUP BY account_id;
/*11*/
SELECT amount
FROM bank.order
WHERE account_to = '30067122';
/*12*/
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = '793'
ORDER BY date DESC
LIMIT 10;
 