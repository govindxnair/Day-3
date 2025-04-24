SHOW DATABASES;
USE sakila;
SHOW TABLES;

DESCRIBE rental;

SELECT customer_id, COUNT(*) AS rentals
FROM rental
GROUP BY customer_id
ORDER BY rentals DESC
LIMIT 5;


SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS rentals
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id
ORDER BY rentals DESC
LIMIT 5;


SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS rentals
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id
ORDER BY rentals DESC
LIMIT 5;

SELECT AVG(amount) AS avg_payment
FROM payment;

CREATE VIEW high_value_customers AS
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 150;

CREATE INDEX idx_customer_id ON payment(customer_id);

