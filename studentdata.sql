use sanket1;
create table studentdata (stud_id int primary key auto_increment,stud_name varchar(300),department varchar(300),marks float,paid_fees bigint,attedance int);
select * from studentdata;
insert into studentdata (stud_name,department, marks, paid_fees,attedance) values('sanket chaskar','dse',80 ,145000, 90),('saud sayeed','dse', 75, 135000, 95),('ashish more','fs',65 ,110000, 95),('omkar dhamale','dse',72,120000, 85),('mandar vaidya', 'fs' ,45 , 140000, 95),('siddhesh vaidya', 'dse' ,48, 125000, 90), ('om chaskar', 'dse' ,65, 145000, 75);
insert into studentdata (stud_name,department, marks, paid_fees,attedance) values('suraj chaskar','aiml',90 ,128000, 90),('aryan khan','dsai', 45, 125000, 55),('salman khan','fs',75 ,110000, 80);
delete from studentdata where stud_id=16;
select * from studentdata limit 5;   #you can see the all first 5 values
select * from studentdata limit 2,8; #you see the 8 values but except first 2 values
select * from studentdata where stud_name like 's%r';  # you can see the names by start and end charcter
-- we have found first highest amount from table
select distinct paid_fees from studentdata order by paid_fees desc limit 1;
select distinct paid_fees from studentdata order by paid_fees desc;     #we can see the all value highest to lowest
select distinct paid_fees from studentdata order by paid_fees limit 1;  #we have found lowest amount from table
select distinct paid_fees from studentdata order by paid_fees ;         # we can see the all value lowest to highest
select * from studentdata where stud_name in ('om chaskar','omkar dhamale');    #you can see the selcted data from table
update studentdata set paid_fees = paid_fees+(paid_fees*0.15) where stud_id in (4,7);   # you add the 15% value on paid fees
select 14500*0.10;      #discount finding
update studentdata set paid_fees = paid_fees-(paid_fees*0.15) where stud_id in (4,7);    # you minus or discount 15% value on paid fees



