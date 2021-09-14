-- 1. Soru
SELECT COUNT(*) FROM film
WHERE length >
(
	SELECT AVG(length) FROM film
);

-- 2. Soru
SELECT COUNT(*) FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate) FROM film
);

-- 3. Soru
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. Soru
SELECT first_name, last_name, num_transaction FROM customer
JOIN
(
	SELECT customer_id, COUNT(*) num_transaction 
	FROM payment 
	GROUP BY customer_id
)virtual_table 
ON customer.customer_id = virtual_table.customer_id
ORDER BY num_transaction DESC;






