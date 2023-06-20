-- SQLite

SELECT COUNT(DISTINCT(rating))
FROM film;

SELECT COUNT(DISTINCT(rating)) AS num_of_ratings
FROM film;

SELECT SUM(length)
FROM film;

SELECT title, length
FROM film
ORDER BY film_id
LIMIT 2;

SELECT AVG(rental_rate)
FROM film
WHERE rating = "G";

SELECT MAX(length)
FROM film;

SELECT rating, AVG(rental_rate)
FROM film
GROUP BY rating;

SELECT rating, COUNT(*) AS count
FROM film
GROUP BY rating;