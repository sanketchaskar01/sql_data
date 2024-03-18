# foreign key

create table users (uid int primary key auto_increment, uname varchar(100));
desc users;
insert into users (uname) values ('sanket'),('ashish'),('saud');
select * from users;
create table orders (oid int primary key, pname varchar(100), uid int, foreign key(uid) references users(uid));
desc orders;
insert into orders values (1,'milk',1);
insert into orders values (2,'bread',1);
insert into orders values (3,'milk',3);
select * from orders;
alter table orders modify oid int auto_increment;
insert into orders (pname,uid) values ('maggi',null);

# joints for foregin key

select users.uname,orders.pname from orders inner join users on users.uid=orders.uid;
select * from orders inner join users on users.uid=orders.uid;

select * from orders where uid is null;




