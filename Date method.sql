# Date method

select curdate();            # showing current date

select now();                # showing current date and time

select sysdate();            # shwoing system date and time

select last_day(curdate());  # shwoing month last day
select last_day('2024-02-12');  

select datediff(curdate(),'1997-05-01');   # shwoing differnece betweeen dates

select date_format(curdate(),'%d-%m-%y');  # changing the date format
select date_format(curdate(),'%d-%m-%y-%a');   # %a for week
select date_format(curdate(),'%a-%d-%m-%y');   # %a for week
select date_format(now(),'%D-%M-%Y-%a,%h');    # %h for hour
select date_format(now(),'%D-%M-%Y-%a,%h:%');    # %h for hour

create table abc (id int primary key, Dob date not null, age int check(age>=18));
insert into abc values (1,'2024-02-02',18);
select * from abc;

select id,date_format(dob,'%W,%d-%m-%y') as DOB, age from abc;    # for shwoing format date and temperory column name
                                          
select dayname('1947-08-15');                                 # for see the date which day is
select substr("sanket chaskar",1,6);
select monthname('1997-05-01');
select upper('sanket');


