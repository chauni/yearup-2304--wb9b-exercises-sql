-- SQLite
-- SELECT title, description

-- FROM film;

-- SELECT *
-- FROM category;

-- SELECT film_id, title, rating, length
-- FROM film
-- WHERE rating = "PG"
--     AND (length >= 90 AND length <= 120)
-- ORDER BY length DESC, title;

-- SELECT film_id, title, description, rating
-- FROM film
-- WHERE title LIKE "po%";

-- SELECT film_id, title, rating, length
-- FROM film
-- WHERE title LIKE "theory%";

-- SELECT film_id, title,rating, length
-- FROM film
-- WHERE length BETWEEN 90 AND 120
-- ORDER BY length DESC;

-- SELECT film_id, title, original_language_id
-- FROM film
-- WHERE original_language_id IS NULL;

SELECT DISTINCT(rental_rate)
FROM film;

