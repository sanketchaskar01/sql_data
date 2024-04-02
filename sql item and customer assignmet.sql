use sanket1;
create table items_ordered(customerid int ,order_date date ,item varchar(50) ,quantity int,price float ,foreign key(customerid) references customers(customerid));
insert into items_ordered values(10330,'1999-06-30','Pogo stick',1,'28.00'),(10101,'1999-06-30','Raft',1,'58.00'),(10298,'1999-07-01','Skateboard',1,'33.00'),(10101,'1999-07-01','Life Vest',4,'125.00'),(10299,'1999-07-06','Parachute',1,'1250.00'),(10339,'1999-07-27','Umbrella',1,'4.50'),(10329,'1999-07-13','Unicycle',1,'180.79'),(10339,'1999-08-14','Ski Poles',2,25.50),(10101,'1999-08-18','Rain coat',1,18.30);
select * from items_ordered;
CREATE TABLE CUSTOMERS (customerid INT PRIMARY KEY,firstname VARCHAR(50),lastname VARCHAR(50),city VARCHAR(100),state VARCHAR(50));
INSERT INTO CUSTOMERS  VALUES(10101, 'John', 'Gray', 'Lynden', 'Washington'),(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona');
SELECT state, COUNT(*) AS num_people FROM CUSTOMERS GROUP BY state;
SELECT item, MAX(price) AS max_price, MIN(price) AS min_price FROM ITEMS_ORDERED GROUP BY item;
SELECT customerid, COUNT(*) AS num_orders, SUM(quantity * price) AS total_order_sum FROM ITEMS_ORDERED GROUP BY customerid;

select count(state), state from customers group by state ;

select count(customerid) from items_ordered group by customerid;

select count(customerid) from items_ordered group by customerid;

select customerid, count(customerid) from items_ordered group by customerid;

select sum(quantity) from items_ordered;
drop table items_ordered;
drop table customers;


------------------------------------------------------------------------------------------------------

select customers.customerid,state,firstname,lastname,order_date,item,quantity,price from customers join items_ordered on customers.customerid=items_ordered.customerid order by customers.state desc;

-----------------------------------------------------------------------------------------------------------------------------------------------
use sanket1;
select * from customer;
select * from order1;
create table customer (cust_id int primary key, cname varchar(20), occupation varchar(20), age int);
create table order1 ( order_id int , cust_id int,foreign key(cust_id) references customer(cust_id),prod_name varchar(20),order_date varchar(20));
insert into customer values (101,'peter','engineer',32),(102,'joseph','developer',30),(103,'john','leader',28),(104,'stephen','scientist',45),(105,'suzi','carpenter',26),(106,'bob','actor',25),(107,null,null,null);
insert into order1 values (1,101,'laptop','2022-01-10'),(2,103,'desktop','2022-02-11'),(3,106,'iphone','2022-03-13'),(4,104,'mobile','2022-03-05'),(5,102,'tv','2022-03-20');

select * from customer where cust_id=107;
select c.cust_id,c.cname,c.occupation,c.age from customer c left join order1 o on c.cust_id=o.cust_id where o.cust_id is null;
SELECT C.CNAME FROM CUSTOMER C INNER JOIN ORDER1 O ON C.CUST_ID = O.CUST_ID WHERE O.PROD_NAME = 'LAPTOP';
SELECT * FROM CUSTOMER C INNER JOIN ORDER1 O ON C.CUST_ID = O.CUST_ID WHERE O.PROD_NAME = 'IPHONE';
SELECT * FROM CUSTOMER C LEFT JOIN ORDER1 O ON C.CUST_ID = O.CUST_ID WHERE O.CUST_ID IS NULL;
SELECT COUNT(CUST_ID) AS total_customers_with_orders FROM ORDER1;

----------------------------------------------------------------------------------------------------------------------------------------------

create table student_info(sid int primary key auto_increment,sname varchar(20), dept varchar(20),percentage float);
INSERT INTO Student_info (sname, dept, percentage) VALUES('Harry', 'IT', 95.26),('Mac', 'CS', 98.45),('Rox', 'Mechanical', 75.69),('Shree', 'IT', 85.65),('Ramesh', 'CS', 89.45);
select * from student_info;

SELECT * FROM Student_info WHERE percentage = (SELECT MAX(percentage) FROM Student_info);
SELECT * FROM Student_info WHERE percentage = ( SELECT MAX(percentage) FROM Student_info WHERE percentage < (SELECT MAX(percentage) FROM Student_info));
SELECT * FROM Student_info WHERE percentage = ( SELECT MAX(percentage) FROM Student_info);


