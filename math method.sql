# math method

select abs(-11);                   #you can use this operator for negative value to positive
select abs(-1.11);

select ceil(10.4);                 #this operator see the upper values

select round(10.4);                #round operator see the lower value before 5
select round(10.5);                # after 5 see the upper values

select truncate(12.1111111,2);     # if you want how much values after . and how many then this use 
select truncate(12.1111111,3);


select mod(10,6);                  # this operator see the reminder values
select mod(12,8);

select floor(3/2);                 # this operator see the before pointer value ex.10.1=10
select floor(10/6);

select power(2,2);                 # this operaotr show the power value.
select power(10,10);               

select sqrt(10);                  # this operator show the which square root value is acutal values   ex. 3.16227 square root is =10
select sqrt(12);

# practise
select department,stud_name,abs(marks) from studentdata where stud_id = 9;
select department,stud_name,ceil(marks) from studentdata where stud_id = 9;

select department,stud_name,abs(marks) from studentdata;
select department,stud_name,abs(marks) from studentdata where stud_id = 9;
