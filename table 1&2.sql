use sanket1;
show databases;
create table table1 (id int primary key auto_increment, studname varchar(300));
insert into table1 (studname) value ('sanket'),('omkar'),('saud'),('ashish'),('mandar');
select * from table1;
create table table2 (id int primary key auto_increment, studname varchar(300));
insert into table2 (studname) value ('manoj'),('omkar'),('sahil'),('ashish'),('sarthak');
select * from table2;
delete from table1 where id=10;
select * from table1 union select * from table2;    # combine the different tables but do not see dublicate same value from tables
select * from table1 union all select * from table2;    # combine the different tables you can see the all dublicate values
select * from table1 intersect select * from table2;    # you can see the only dublicate or same value in tables
select * from table1 except select * from table2;    # you can see all table1 value but not dublicate or same in table1
select * from table2 except select * from table1;    # you can see all table2 value but not dublicate or same 





