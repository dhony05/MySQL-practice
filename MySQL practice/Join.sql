USE sakila;

-- Inner Join -- 

SELECT address.address_id, customer.first_name
FROM address
INNER JOIN customer
ON address.address_id = customer.address_id;


-- Left Join --
SELECT address.address_id, customer.first_name
FROM address
LEFT JOIN customer
ON address.address_id = customer.address_id
ORDER BY address_id ASC;

-- Right Join -- 
SELECT address.address_id, customer.first_name
FROM address
RIGHT JOIN customer
ON address.address_id = customer.address_id
ORDER BY address_id ASC; 


-- VIEWS -- 

CREATE VIEW  customer_fullname AS
	SELECT CONCAT(customer.first_name,' ', customer.last_name)
    FROM customer;
    
    ALTER VIEW  customer_fullname AS
	SELECT CONCAT(customer.first_name,'       ', customer.last_name)
    FROM customer;

 -- -- -- STORED PROCS -- -- -- 
 #right click sp ion left pane to create sp
 #click apply, apply, finish
 
 CALL getAll_Actors;



