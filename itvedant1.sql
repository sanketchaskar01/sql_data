use sanket1;
create table itvedant1 (studid int primary  , studname varchar(300), coursename varchar(300) default 'dse');
insert into itvedant1 value (1, 'sanket', 'dse');
desc itvedant1;
select * from itvedant1;
insert into itvedant1 value (2,'saud',default);
alter table itvedant1 modify studid int primary key;
alter table itvedant1 modify studid int auto_increment;
insert into itvedant1 (studname) values ('omkar'),('sunny'),('siddhu');
update itvedant1 set studname='mandar' where studid=4;
delete from itvedant1 where studid=5;
insert into itvedant1 (studname) values ('ashish'),('om'),('varad');
select studname from itvedant1;
select studname as studentname from itvedant1;
insert into itvedant1 (studname) values ('ankit'),('suraj'),('manoj');
alter table itvedant1 add column age int;
alter table itvedant1 drop column age;
select * from itvedant1 where studname like 's%t';