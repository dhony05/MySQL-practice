#tells you what current database you are using 

SELECT DATABASE();

USE testdb;

-- store proccedures and delimeters 

-- delimeter and stored procedires 

delimiter $$ 
CREATE PROCEDURE spExample()
BEGIN
SELECT * FROM actor;
SELECT * FROM film;

END $$
delimiter ;

-- call stored procedure
CALL spExample();

-- must be using 

create table employee 
(
	empl_id int primary key auto_increment,
    empl_name varchar(30),
    hourly_rate double,
    email varchar(50)
);

insert into employee values(null, 'sam', 10, 'sam@mail.com');

select * from employee;
delimiter  $$
CREATE PROCEDURE spAddEmployee(IN nameImput varChar(30),
 in hourlyRateInput double, out salaryOutput double,
 inout emailInOut varchar(50)) 
BEGIN
-- create variables inside procedures
	DECLARE email varchar(50);
	
    -- calculate salary
    SELECT hourlyRateInput*40*4*12 into salaryOutPut;
    
    -- format email
    select concat(nameInput,'@',emailInOut) into email;
    
    select email into emailInOut;

END $$

delimiter ;

