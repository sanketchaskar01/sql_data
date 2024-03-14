use sanket1;
create table studentdata (stud_id int primary key auto_increment,stud_name varchar(300),department varchar(300),marks float,paid_fees bigint,attedance int);

select * from studentdata;     #if you want to see the table values

insert into studentdata (stud_name,department, marks, paid_fees,attedance) values('sanket chaskar','dse',80 ,145000, 90),('saud sayeed','dse', 75, 135000, 95),('ashish more','fs',65 ,110000, 95),('omkar dhamale','dse',72,120000, 85),('mandar vaidya', 'fs' ,45 , 140000, 95),('siddhesh vaidya', 'dse' ,48, 125000, 90), ('om chaskar', 'dse' ,65, 145000, 75);

insert into studentdata (stud_name,department, marks, paid_fees,attendance) values ('salman khan','fs',75 ,110000, 80);

delete from studentdata where stud_id=16;     #if you want the delete the particular data from table

select * from studentdata limit 5;   #you can see the all first 5 values

select * from studentdata limit 2,8; #you see the 8 values but except first 2 values

select * from studentdata where stud_name like 's%r';  # you can see the names by start and end charcter

-- we have found first highest amount from table
select distinct paid_fees from studentdata order by paid_fees desc limit 1;     #if you want to see higher paid_fees see 

select distinct paid_fees from studentdata order by paid_fees desc;     #we can see the all value highest to lowest tab;e sequence

select distinct paid_fees from studentdata order by paid_fees limit 1;  #if you want found lowest amount from table

select distinct paid_fees from studentdata order by paid_fees ;         # we can see the all value lowest to highest

select * from studentdata where stud_name in ('om chaskar','omkar dhamale');    #you can see the selcted data from 

select * from studentdata where stud_name not in ('om chaskar','omkar dhamale');    #you can not see the selcted data from table

update studentdata set paid_fees = paid_fees+(paid_fees*0.15) where stud_id in (4,7);   # you add the 15% value on paid fees

select 14500*0.10;      #discount finding

update studentdata set paid_fees = paid_fees-(paid_fees*0.15) where stud_id in (4,7);    # you minus or discount 15% value on paid fees

alter table studentdata rename column attedance to attendance;     # update or change the column name

select * from studentdata;     #if you want to see the table

alter table studentdata add column city varchar(300) default 'mumbai';    #if you want add column and default the column

alter table studentdata drop column city;      #if you want particular column delete or drop

delete from studentdata where stud_id= 10;    #if you want paricular row delete

update studentdata set department='dsa' where stud_id=9;     #if you want particular column endivisual changes

update studentdata set stud_id=10 where stud_id=17;        #for update the particular column data in table

delete from studentdata where stud_id in (18,19);     #you can use in operator for deleting particular id from table

select * from studentdata  where stud_id between 3 and 8;  #you can see the data between particular range

select * from studentdata where paid_fees>=120000 and paid_fees<=145000;    #you can use same as between operator without using operator

select max(paid_fees) from studentdata;                # you can see highest value or paid fees in table

select min(paid_fees) from studentdata;                # you can see lowest value or paid fees in table

select sum(paid_fees) from studentdata;                # you can see total value or paid fees in table

select count(paid_fees) from studentdata;                # you can see person count  value paid fees in table

select avg(paid_fees) from studentdata;                # you can see avg value paid fees in table

select count(stud_id),department from studentdata group by department;    #you can see group and count how many person in differnt department

select * from table1;
select * from table2;

select * from table1 union select * from table2;    # combine the different tables but do not see dublicate same value from tables

select * from table1 union all select * from table2;    # combine the different tables you can see the all dublicate values

select * from table1 intersect select * from table2;    # you can see the only dublicate or same value in tables

select * from table1 except select * from table2;    # you can see all table1 value but not dublicate or same in table1

select * from table2 except select * from table1;    # you can see all table2 value but not dublicate or same 

select count(stud_id),department from studentdata group by department having count(department)>=2;  #if condition is you can find out the more 2 person in department then this use

select * from studentdata where marks not in (81);

select count(stud_id),department from studentdata where marks not in(90) group by department;     #if you want to know who is under 90 then this is use

select * from studentdata;     #if you want to see the table

          

















