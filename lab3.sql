SELECT MIN(length) AS min_duration ,MAX(length) AS max_duration
FROM sakila.film;

SELECT CONCAT(
	FLOOR(AVG(length)/60) , " hour, ",		
    FLOOR(AVG(length)%60) , " minutes"
) AS test
FROM sakila.film;

SELECT DATEDIFF(MAX(rental_date),MIN(rental_date)) AS days_open
FROM sakila.rental;

SELECT MONTH(rental_date) AS rental_month , DAYNAME(rental_date) AS rental_weekday
FROM sakila.rental
LIMIT 20;

SELECT title, IFNULL(rental_duration,"Nope") AS rental_duration
FROM film
ORDER BY title ASC;

SELECT  DISTINCT COUNT(film_ID) AS total_films
FROM film;

SELECT COUNT(film_id), rating
FROM film
GROUP BY rating;

SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;

SELECT ROUND(AVG(length),2) f ,rating
FROM film
GROUP BY rating
ORDER BY f DESC;

SELECT rating, ROUND(AVG(length),2)
FROM film
GROUP BY rating
HAVING AVG(length) > 120;