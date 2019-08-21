create database testing;
use testing;

create table  mytable(
myNumber VARCHAR(10) NOT NULL UNIQUE,
myName VARCHAR(50)


);

INSERT INTO myTable(myNumber,myName)
VALUES ('223424423' , 'Rob');

select * from myTable;