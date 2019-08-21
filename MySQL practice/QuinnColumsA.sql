USE sakila;

SELECT *, CONCAT_WS(', ' ,last_name, first) AS 'full_name'
FROM actor;

SELECT actor;