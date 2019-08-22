USE testdb;

CREATE TABLE TimeTable(
DateAndTime DATETIME);

-- ADD DATE-- --

INSERT INTO TimeTable(DateAndTime)
values(adddate('2018-12-04', 34353));
select * from TimeTable;

#LAST_DAY
insert into TimeTable(DateAndTime)
values(last_day('2018-12-04'));
select * from TimeTable;

#CURRENT_DATE
insert into TimeTable(DateAndTime)
values(current_date());
select * from TimeTable;

#EXTRACT
select extract(year from current_date());






