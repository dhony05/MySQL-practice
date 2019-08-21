use sakila;
SELECT ascii('A') FROM DUAL;
SELECT first_name,ascii(first_name)from actor;

Select concat('Life ','is ','beautiful ') from dual;
select first_name,last_name,concat(first_name," ",last_name) from actor;

Select length("Zawardo");
Select upper("life");
Select substr("Beautiful",4,8);
