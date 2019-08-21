USE testdb;

SET SESSION autocommit = 0;


CREATE TABLE pet(pet_id INT, pet_type VARCHAR(100));

COMMIT;


INSERT INTO pet VALUES(1, 'dog');
INSERT INTO pet VALUES(2, 'cat');
INSERT INTO pet VALUES(3, 'rabbit');

SELECT * FROM pet;

ROLLBACK;
SELECT * FROM pet;
COMMIT