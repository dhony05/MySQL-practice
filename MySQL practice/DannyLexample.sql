use testdb;
CREATE TABLE city(name varchar(50) NOT NULL,tickets INT NOT NULL,languague varchar(50) DEFAULT "ENGLISH");
-- filling database with values
INSERT INTO city VALUES ('Paris','5000','French');
INSERT INTO city VALUES ('London','6000','English');
INSERT INTO city VALUES ('Dubai','8000','Arabic');
INSERT INTO city VALUES ('Singapore','7000','Mandarin');
INSERT INTO city VALUES ('New York','2000','English');
INSERT INTO city VALUES ('Tokyo','6500','Japanese');