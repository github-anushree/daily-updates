create database try3;
use try3;
create table emp (
id int primary key,
name varchar(50),
salary int,
place varchar(30));

select e1.id, e1.name, e2.id, e2.name, e1.place
from emp as e1
join emp as e2
on e1.place = e2.place;

select e1.id, e1.name, e2.id, e2.name, e1.place
from emp as e1
join emp as e2
on e1.place = e2.place and e1.id < e2.id;

select e1.id, e1.name, e2.id, e2.name, e1.place
from emp as e1
join emp as e2
on e1.place = e2.place and e1.id != e2.id;