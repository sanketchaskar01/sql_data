use sanket1;
create table items_ordered(customerid int not null,order_date date not null,item varchar(50) not null,quantity int,price float not null);
insert into items_ordered values(10330,'1999-06-30',"Pogo stick",1,28.00),(10101,'1999-06-30',"Raft",1,58.00),(10298,'1999-07-01',"Skateboard",1,33.00),(10101,'1999-07-01',"Life Vest",4,125.00),(10299,'1999-07-06',"Parachute",1,1250.00),(10339,'1999-07-27',"Umbrella",1,4.50),(10449,'1999-07-13','Unicycle',1,'180.79');
select * from items_ordered;
CREATE TABLE CUSTOMERS (customerid INT PRIMARY KEY,firstname VARCHAR(50),lastname VARCHAR(50),city VARCHAR(100),state VARCHAR(50));
INSERT INTO CUSTOMERS (customerid, firstname, lastname, city, state) VALUES(10101, 'John', 'Gray', 'Lynden', 'Washington'),(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona');
SELECT state, COUNT(*) AS num_people FROM CUSTOMERS GROUP BY state;
SELECT item, MAX(price) AS max_price, MIN(price) AS min_price FROM ITEMS_ORDERED GROUP BY item;
SELECT customerid, COUNT(*) AS num_orders, SUM(quantity * price) AS total_order_sum FROM ITEMS_ORDERED GROUP BY customerid;

select count(state), state from customers group by state ;

select count(customerid) from items_ordered group by customerid;

select count(customerid) from items_ordered group by customerid;

select customerid, count(customerid) from items_ordered group by customerid;

select sum(quantity) from items_ordered;