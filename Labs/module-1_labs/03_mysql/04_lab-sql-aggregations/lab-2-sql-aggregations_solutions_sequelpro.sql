/*01*/
SELECT district_id,
count(client_id)
FROM bank.client
WHERE district_id < '10'
GRoup By district_id
ORDER BY district_id;
/*02*/
SELECT type,
count(type)
FROM bank.card
GROUP BY type;
/*03*/
SELECT account_id,
sum(amount) as sum_amount
FROM bank.loan
Group BY account_id
Order BY sum_amount DESC
LIMIT 10;
/*04*/
SELECT date,
count(loan_id)
FROM bank.loan
WHERE date < '930907'
GROUP BY date
ORDER BY date DESC;
/*05*/
SELECT 
date,
duration,
count(loan_id) AS no_loan
FROM bank.loan
WHERE date > '971201' 
AND date < '971231'
GROUP BY duration
ORDER BY date;
/*06*/
SELECT
account_id,
type,
SUM(amount) as total_amount
FROM bank.trans
WHERE account_id = '396'
Group BY type;
/*07*/
SELECT
account_id,
CASE 
	WHEN type = 'PRIJEM' THEN 'INCOMING'
	WHEN type = 'VYDAJ' THEN 'OUTGOING'
END as transaction_type,
ROUND(SUM(amount), 0) as total_amount
FROM bank.trans
WHERE account_id = '396'
GROUP BY type;
/*08*/
SELECT 
account_id,
ROUND(SUM(amount), 0) as total_amount
FROM bank.trans
WHERE account_id = '396'
GROUP BY account_id;



