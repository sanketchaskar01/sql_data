create database project;
use project;
------------------------------------------------------------------------------------------------------------------------------------------------
create table inventory (pid varchar(20) primary key,Product_name varchar(50),Category varchar(50),SubCategory varchar(50),I_Quantity int , WholesalePrize bigint);
alter table inventory add column colour varchar(20) after size;
select * from inventory;
desc inventory;
insert into inventory values ('P001','Bata Dealo Toring','Slippers','Mens','7','Black',30,300),('P002','Bata Dealo Toring','Slippers','Mens','8','Black',30,300),('P003','Bata Dealo Toring','Slippers','Mens','9','Black',30,300),
('P004','Bata Dealo Toring','Slippers','Mens',10,'Black',30,300),('P005','Flite Thongs','Flip-Flops','Mens',7,'Black',32,450),('P006','Flite Thongs','Flip-Flops','Mens',8,'Black',32,450),('P007','Flite Thongs','Flip-Flops','Mens',9,'Black',32,450),
('P008','Flite Thongs','Flip-Flops','Mens',10,'Black',32,450),('P009','Liberty Casual Thong','Slippers','Mens',7,'Black',35,300),('P010','Liberty Casual Thong','Slippers','Mens',8,'Black',35,300),('P011','Liberty Casual Thong','Slippers','Mens',9,'Black',35,300),
('P012','Liberty Casual Thong','Slippers','Mens',10,'Black',35,300),('P013','Bata Shine Tr','Slippers','Womens',7,'Black',40,250),('P014','Bata Shine Tr','Slippers','Womens',8,'Black',40,250),('P015','Bata Shine Tr','Slippers','Womens',9,'Black',40,250),('P016','Bata Shine Tr','Slippers','Womens',10,'Black',40,250),
('P017','Bata Womens Becca Mule','Sandals','Womens',7,'Black',36,320),('P018','Bata Dealo Toring','Slippers','Mens','7','Brown',30,300),('P019','Bata Dealo Toring','Slippers','Mens','8','Brown',30,300),('P020','Bata Dealo Toring','Slippers','Mens','9','Brown',30,300),
('P021','Bata Dealo Toring','Slippers','Mens',10,'Brown',30,300),('P022','Flite Thongs','Flip-Flops','Mens',7,'Brown',32,450),('P023','Flite Thongs','Flip-Flops','Mens',8,'Brown',32,450),('P024','Flite Thongs','Flip-Flops','Mens',9,'Brown',32,450),
('P025','Flite Thongs','Flip-Flops','Mens',10,'Brown',32,450),('P026','Liberty Casual Thong','Slippers','Mens',7,'Brown',35,300),('P027','Liberty Casual Thong','Slippers','Mens',8,'Brown',35,300),('P028','Liberty Casual Thong','Slippers','Mens',9,'Brown',35,300),
('P029','Liberty Casual Thong','Slippers','Mens',10,'Brown',35,300),('P030','Bata Shine Tr','Slippers','Womens',7,'Brown',40,250),('P031','Bata Shine Tr','Slippers','Womens',8,'Brown',40,250),('P032','Bata Shine Tr','Slippers','Womens',9,'Brown',40,250),('P033','Bata Shine Tr','Slippers','Womens',10,'Brown',40,250),
('P034','Bata Womens Becca Mule','Sandals','Womens',7,'Brown',36,320);


-------------------------------------------------------------------------------------------------------------------------------------------------
create table employee (eid varchar(20) primary key, Employee_name varchar(50),Designation varchar(50),Employee_salary bigint);
select * from employee;
desc employee;
insert into employee values ('E001','Saud Sayeed','Sales Exe',20000),('E002','Ashish More','Sales Exe',18000),('E003','Abhishek Jagtap','Sales Exe',19000),('E004','Pruthika Vankar','Sales Exe',20000),('E005','Netra Zambre','Billing',15000),
('E006','Namita Bhoir','Sales Exe',18000),('E007','Oral Robert','Inventory Person',16000),('E008','Anuj Singh','Inventory Person',15000),('E009','Mandar Vaidya','Security',12000),('E010','Omkar Dhamale','Cleaning',10000),
('E011','Siddhesh Vaidya','Peon',11000),('E012','Sanket Chaskar','Store Manager',30000);

--------------------------------------------------------------------------------------------------------------------------------------------------
create table customer (cid varchar(20) primary key, Customer_name varchar(50),Customer_city varchar(50),Customer_Contact_no bigint,Customer_email varchar(50));
select * from customer;
desc customer;
insert into customer values ('C001','Sujata Chaskar','Thane','8569321597','sujata@gmail.com'),('C002','Sonali Dhamale','Pune','9632541896','sonali@gmail.com'),('C003','Dhanjaya Vaidya','Nashik','7598632548','dhanjay@gmail.com'),
('C004','Sagar Dubey','Thane','7856321598','sagar@gmail.com'),('C005','Nilesh Mishra','Thane','7521569853','nilesh@gmail.com'),('C006','Prnc Dsouza','Mumbai','8541236589','prnc@gmail.com'),('C007','Mohan Singh','Mira Road',7854256985,'mohan@gmail.com'),
('C008','Varad Khot','Dombivli','8569325418','varad@gmail.com'),('C009','Sangeeta Pai','Kalyan','7856985214','sangeeta@gmail.com'),('C010','Pankaj Gawade','Sakinaka','7856986358','pankaj@gmail.com'),('C011','Saloni Khot','Dombivli','8547963201','saloni@gmail.com'),
('C012','Dakshata Khot','Kalyan','7852364102','dakshata@gmail.com');

-------------------------------------------------------------------------------------------------------------------------------------------------
create table sales (sid varchar (20) primary key, cid varchar(20),foreign key(cid) references customer(cid),eid varchar(20),foreign key(eid) references employee(eid),pid varchar(20),foreign key(pid) references inventory(pid),S_Quantity int,Saledate varchar(20),Payment_mode varchar(50),Selling_prize bigint);
insert into sales values ('S001','C005','E003','P004',1,'2024-Jan-01','Credit Card',650),('S002','C002','E006','P026',1,'2024-Jan-02','Upi',620),('S003','C006','E001','P006',1,'2024-Jan-03','Credit Card',750),('S004','C006','E001','P001',1,'2024-Jan-03','Credit Card',700),('S005','C011','E004','P032',1,'2024-Jan-04','Debit Card',550),
('S006','C011','E004','P013',1,'2024-Jan-04','Debit Card',550),('S007','C001','E006','P032',1,'2024-Jan-05','Cash',550),('S008','C001','E006','P034',1,'2024-Jan-05','Cash',550),('S009','C007','E002','P003',1,'2024-Jan-06','Cash',580),('S010','C007','E002','P023',1,'2024-Jan-06','Cash',600);
select * from sales;
desc sales;
select * from inventory;
-------------------------------------------------------------------------------------------------------------------------------------------------
create table reviews (cid varchar(20),foreign key(cid) references customer(cid),pid varchar(20), foreign key(pid) references inventory(pid),Product_name varchar(50),Rating int,Customer_Review varchar(300));
insert into reviews values('C005','P004','Bata Dealo Toring',9,'Excllent staff'),('C001','P032','Bata Shine Tr',10,'Good service'),('C006','P006','Flite Thongs',10,'Nice staff');
select * from reviews;
desc reviews;
alter table reviews rename column rating to Quality_rating;

-----------------------------------------------------------------------------------------------------------------------------------------------
# for seeing the what is the prodcut buying prize and selling prize
select inventory.pid,inventory.product_name ,inventory.wholesaleprize as buyingprize ,sales.selling_prize as sellingprize from inventory join sales on inventory.pid=sales.pid order by inventory.pid;
# for seeing the profits
select sales.selling_prize,inventory.wholesaleprize, (selling_prize-wholesaleprize)  as profits from sales join inventory on sales.pid=inventory.pid; 
# for seeing which employee giving the shop what amount of sales
SELECT eid, sum(selling_prize) AS totalsale FROM sales GROUP BY eid;

select sales.pid,sales.cid,sales.s_quantity as product_performance from sales order by sales.pid;