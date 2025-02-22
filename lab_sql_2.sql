USE sakila;

# 1. Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor
WHERE first_name = "Scarlett";

# 2. Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor
WHERE last_name = "JOHANSSON";

# 3. How many films (movies) are available for rent?
SELECT COUNT(inventory_id) from inventory;

# 4. How many films have been rented?
SELECT COUNT(distinct inventory_id) from rental;

# 5. What is the shortest and longest rental period?
SELECT MIN(rental_duration), MAX(rental_duration) FROM film;

# 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) AS max_duration, MIN(length) AS min_duration FROM film;

# 7. What's the average movie duration?
SELECT AVG(length) FROM film;

# 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(AVG(length)/60), ' hours ', MOD(ROUND(AVG(length)), 60), ' minutes') AS avg_duration
FROM film;

SELECT SEC_TO_TIME(AVG(length*60)) AS avg_duration FROM film;

# 9. How many movies longer than 3 hours?
SELECT COUNT(*) FROM film
WHERE length > 180;

# 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(UPPER(LEFT(first_name,1)),LOWER(SUBSTRING(first_name,2,LENGTH(first_name))),' ',last_name, ' - ', LOWER(email)) AS name_and_email FROM customer;

# 11. What's the length of the longest film title?
SELECT MAX(LENGTH(title)) FROM film;