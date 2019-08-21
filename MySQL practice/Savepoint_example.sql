USE testdb;
SET SQL_SAFE_UPDATES = 0;

DROP TABLE PET;

CREATE TABLE pet(pet_id INT, pet_type VARCHAR(100));

-- -- save point Example -- --
#insert

SAVEPOINT before_insert;
INSERT INTO pet VALUES(1, 'dog');
INSERT INTO pet VALUES(2, 'cat');

#select all 
SELECT * FROM pet; #2 records displayed

#delete
SAVEPOINT before_insert;
DELETE FROM pet WHERE pet_id = 1;

#select a;;
SELECT * FROM pet;

#update
SAVEPOINT before_update;
UPDATE pet set pet_type = 'fish' WHERE pet_id= 2;
SELECT * FROM pet;

#rollback before update
ROLLBACK TO before_update;
SELECT * FROM pet;

#rollback to the beggining
ROLLBACK;
SELECT * FROM pet;

#rollback before delete
ROLLBACK TO before_delete;
SELECT * FROM pet;

#rollback before insert
ROLLBACK TO before_insert;
SELECT * FROM pet;

