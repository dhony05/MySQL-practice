create database newTest;

use newTest;

CREATE TABLE people(person_name VARCHAR(50) , age INT(3));
INSERT INTO people(person_name,age) VALUES("Dude Gui", 40);
ALTER TABLE people DROP age;

SELECT * FROM people;
DROP TABLE people;
#dont drop 
