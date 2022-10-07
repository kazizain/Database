

--- creating table---

create table student(
std_id int,
fname varchar(7),
lname varchar(8),
phone varchar(11)
 

);

--- creating an other table adding forien key with refrence of std table primaray key---.

create table course(
course_id int,
course_name varchar(15),
std_id int,
PRIMARY key(course_id),
FOREIGN key(std_id)REFERENCES student(std_id)
);

--- Add col in table ---
alter table student Add age int check(age>5);
--- seting default value
alter table student modify fname  default 'Empty'; 
 
--- view table---
select *FROM student;

--- insert row in table---

INSERT into student VALUES(20,'zain','qazi',03322807321,20);
INSERT into student VALUES(22,'zain','arif',03322994321,17);
INSERT into student VALUES(24,'','arif',03322964321,17);
---INSERT into student VALUES(null,'zain','qazi',03322807321,20); entity integrity constraint voilating due to insert primary key null.
---INSERT into student VALUES(10,'rafay','qazi',03322807321,4); will not add bcz attribute constraint is voilating.

--- adding primary key---
ALTER TABLE student Add primary key(std_id);

--- edit row------
update student set fname = 'rafay' where std_id =24;

--- searching name by finding particular alphabet in the name-----
select fname from STUDENT where fname like ('%z%');

---- delete row ---------------------------------------------------
DELETE from student WHERE std_id=22;