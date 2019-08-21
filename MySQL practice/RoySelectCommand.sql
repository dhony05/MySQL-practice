USE  sakila;


SELECT first_name , last_name FROM actor;

-- selecttion
SELECT * FROM actor WHERE first_name = 'Penelope';

-- Joining

SELECT * FROM actor,actor_info where actor.first_name = actor.first_name;

SELECT actor_id*100+1 , first_name,last_name FROM actor;

SELECT 20+200, 35*3 , 3+8;