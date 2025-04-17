SELECT * FROM sakila.customer
INNER JOIN sakila.payment
on sakila.customer.customer_id = sakila.payment.customer_id;

SELECT * FROM sakila.city
RIGHT JOIN sakila.country
on sakila.city.country_id = sakila.country.country_id;

SELECT * FROM sakila.category
LEFT JOIN sakila.film_category
on sakila.category.category_id = sakila.film_category.category_id;

#Distinct sum, sum and max
SELECT MAX(film_id) FROM sakila.film;

SELECT SUM(DISTINCT amount) from sakila.payment;
SELECT SUM( amount) from sakila.payment;