USE sakila;
SELECT *
FROM actor;

-- display actor first names 

SELECT first_name
FROM actor
ORDER BY first_name ASC;

-- distinct demo -- -- -- 
SELECT DISTINCT first_name 
FROM actor
ORDER BY first_name ASC;

--  where condition demo -- -- --
SELECT DISTINCT first_name
FROM actor
WHERE first_name ='al'
ORDER BY first_name ASC;

-- Group by demo  -- -- -- 
SELECT *
FROM film;

SELECT rating, count(*)
FROM film
GROUP BY rating;
-- Having demo -- -- -- 
SELECT rating, count(*)
FROM film
GROUP BY rating
HAVING count(*)>200;
