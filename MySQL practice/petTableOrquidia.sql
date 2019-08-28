# set up test data
use testdb;

create table animal 
(
	animal_id int not null primary key,
    animal_type varchar(30) not null unique
);

insert into animal values(1, 'dog');
insert into animal values(2, 'cat');
insert into animal values(3, 'rabbit');
insert into animal values(4, 'snake');
insert into animal values(5, 'fish');
insert into animal values(6, 'bird');
insert into animal values(7, 'unknown');

select * from animal;

create table pet 
(
	pet_id int not null primary key auto_increment,
    pet_name varchar(30) not null,
    animal_id int not null,
    foreign key (animal_id) references animal(animal_id)
);

insert into pet values(null, 'tiger', 2);

select * from pet;

#switch case procedure
delimiter $$
create procedure spAddPet(in petName varchar(30), in petType varchar(30))
begin
	declare animalID int;
		
    case
		when (petType = 'dog') then
			select 1 into animalID;
		when (petType = 'cat') then
			select 2 into animalID;
		when (petType = 'rabbit') then
			select 3 into animalID;
		when (petType = 'snake') then
			select 4 into animalID;
            when (petType = 'fish') then
			select  5 into animalID;
            when (petType = 'bird') then
			select 6 into animalID;
		else
			
			select 7 into animalID;
    end case;
    
    insert into pet values(null,petName,animalID);
end $$

delimiter ;


-- procedure using while

delimiter $$
create procedure spAddIteration(inout num int)
begin
	set @sum = 0;
    
    while(num >0)
    do 
    
		set @sum = @sum + num;
        set num = num -1;
    end while;
	select @sum into num;
end $$

delimiter ;

-- call procedure

set @num = 10;

call spAddIteration(@num);

select @num





