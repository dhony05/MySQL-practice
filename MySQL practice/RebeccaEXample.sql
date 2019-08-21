create database pokedex;

use pokedex;

create table pokemon(
pokemon_id VARCHAR(15) NOT NULL PRIMARY KEY,
pokemon_name VARCHAR(50),
no_evolutions int(1)
);

Insert into pokemon
values("1","Charmander","4");

select * from pokemon;
alter table pokemon
add Gender varchar(2),
drop PRIMARY KEY;






