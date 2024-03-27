use sanket1;
select * from studentdata;

select stud_id,department,marks,
case
when marks>=35 and marks<=50 then 'Third class'
when marks>50 and marks<80 then 'Second Class'
when marks>=80 and marks<100 then 'First Class'
end as result from studentdata order by marks desc;

--------------------------------------------------------------------------------------

# Joints

use sanket1;

create table college (cid int primary key, cname varchar(20), location varchar(20));
insert into college values (1,'datta meghe','airoli'),(2,'saraswati','kharghar'),(3,'muchhala','Thane');
insert into college values (4,'ap shah','thane');
create table student1 (sid int primary key,snme varchar(20), age int,scity varchar(20),cid int , foreign key(cid) references college(cid));
insert into student1 values (01,'Saud Sayeed',25,'Vikhroli',2),(02,'Ashish more',26,'Murbad',2),(03,'Netra zambre',22,'Thane',1),(04,'Pruthika vankar',21,'nagpur',3),(05,'oral robert',24,'bhandup',3),(06,'abhishekh jagtap',25,'kalyan',2),(07,'anuj singh',24,'mulund',1),(08,'pooja tanwar',25,'mumbai',2);
select * from college inner join student1 on student1.cid=college.cid;
select student1.snme,student1.scity as student_address, college.cname as college_name, college.location as college_address from college inner join student1 on student1.cid=college.cid;

select * from student1 natural join college;            # natural join

select * from student1 left join college on student1.cid=college.cid;      #left table join to the right you see left table all value but right side table only see with duplicate value with left
select * from college left join student1 on student1.cid=college.cid
union
select * from college right join student1 on student1.cid=college.cid;     # right table joint to the left

select * from college right join student1 on student1.cid=college.cid;



-------------------------------------------------------------------------------------------------

use sanket1;
create table uniform (ucode int primary key,uname varchar(20),ucolor varchar(20));
create table cost (ucode int, foreign key(ucode) references uniform(ucode),size char,price bigint);
insert into uniform values (1,'shirt','white'),(2,'pant','grey'),(3,'tie','blue');
insert into cost values (1,'L',580),(1,'M',580),(2,'L',890),(2,'M',810);

# using condtion in where clause
select uniform.ucode,uname,ucolor,size,price from uniform,cost where uniform.ucode=cost.ucode;

# use of join clauses

select uniform.ucode,uname,ucolor,size,price from uniform join cost on uniform.ucode=cost.ucode;

# use of natural join

select * from uniform natural join cost;

-------------------------------------------------------------------------------------------------------------------

create table emp1 (eid int primary key, ename varchar(20),designation varchar(20),mid int );
insert into emp1 value (1,'rahul','dev',6),(2,'devsoni','HR',5),(3,'saud','dev',6),(4,'rohit','dev',6),(5,'sanket','ceo',null),(6,'ashish','manager',5);
select * from emp1;

select e.ename,e.designation,m.ename,m.designation from emp1 e inner join emp1 m on e.mid=m.eid;
select e.ename as employee_name,m.ename as manager_name from emp1 e inner join emp1 m on e.mid=m.eid;
select e.ename,e.designation,m.ename,m.designation from emp1 e, emp1 m where e.mid=m.eid;

# self join
select e.ename as employee_name,e.designation,m.ename as manager_name,m.designation
from emp1 as e, emp1 as m where e.mid=m.eid;       

# cross join
select * from student1;
select * from college;

select student1.snme, college.cname from student1 cross join college;
select student1.snme, college.cname from student1,college;


