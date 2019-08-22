SELECT CEIL(15.8);

SELECT FLOOR(15.8);

SELECT POW(4,2);

SELECT GREATEST(4,2,8,1);

USE sakila;

SELECT * 
FROM payment;

SELECT payment_id, amount, CEIL(amount)
AS High_amt
FROM payment
WHERE payment_id BETWEEN 1 AND 10;

SELECT payment_id, amount, FLOOR(amount)
AS High_amt
FROM payment
WHERE payment_id BETWEEN 1 AND 10;

