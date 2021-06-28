drop database if exists order_db;
create database order_db;
use order_db;
create table order_table(
order_id varchar(30) primary key,
buyer_id varchar(30),
amount float,
date Date,
address varchar(50),
status varchar(20))
;
insert into order_table values(401,'B1001',16999.25,'2021-05-14','Gandhi nagar,near square mart, Nagpur','Order Placed');
insert into order_table values(402,'B1003',14999.00,'2021-04-03','meera road, opposit times square, Delhi','Dispatched');
insert into order_table values(403,'B1001',8499.30,'2021-05-23','oasis villa, mahallar road, Mumbai','Delivered');
insert into order_table values(404,'B1005',16999.20,'2021-03-20','new layout, infront valley, Karjat','Order Placed');
insert into order_table values(405,'B1004',14999.18 ,'2021-05-21','ram nagar, pk valley, Bhopal','Packing');
insert into order_table values(406,'B1005',15999.20,'2021-04-30','grant valla, next to kidsschool, Bareli','Dispatched');

create table products_ordered(
buyer_id varchar(30),
product_id varchar(30),
seller_id varchar(30),
quantity integer,
constraint products_ordered_pk primary key (product_id,buyer_id)
 );
 
insert into products_ordered values('B1001','P3003','S2001',1);
insert into products_ordered values('B1003','P3001','S2001',2);
insert into products_ordered values('B1001','P3002','S2001',1);
insert into products_ordered values('B1005','P3006','S2003',3);
insert into products_ordered values('B1004','P3004','S2002',1);
insert into products_ordered values('B1005','P3005','S2002',1);
