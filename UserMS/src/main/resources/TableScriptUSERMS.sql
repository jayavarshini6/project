drop database if exists user_db;
create database user_db;
use user_db;

create table buyer (
buyer_id varchar(30) not null,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_privileged varchar(5),
reward_points varchar(20),
is_active varchar(5),

constraint buyer_pk primary key (buyer_id)

);

insert into buyer values('B1001','Jack','jack@gmail.com',9009009001,'Jack@123','true',1000,'true');
insert into buyer values('B1002', 'Jill', 'jill@gmail.com',  9009009002,  'Jill@123', 'true', 1500, 'true');
insert into buyer values('B1003','Sam','jack@gmail.com',9009009003,'Sam@123','true',2000,'true');
insert into buyer values('B1004','Toby','toby@gmail.com',9009009004,'Toby@123','true',750,'true');
insert into buyer values('B1005','Albert','albert@gmail.com',9009009005,'Albert@123','true',10000,'true');


create table seller (
seller_id varchar(30) not null,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_active varchar(5),

constraint seller_pk primary key (seller_id)

);


insert into seller values('S2001','Zan','zan@gmail.com',9001900001,'Zan@123','true');
insert into seller values('S2002','Ben','ben@gmail.com',9001900002,'Ben@123','true');
insert into seller values('S2003','Mike','mike@gmail.com',9001900001,'Mike@123','true');

create table wishlist (
buyer_id varchar(30),
prod_id varchar(30),


constraint wishlist_pk primary key (prod_id,buyer_id)

);

insert into wishlist values('B1001','P3003');
insert into wishlist values('B1003','P3001');
insert into wishlist values('B1001','P3002');
insert into wishlist values('B1005','P3006');
insert into wishlist values('B1004','P3004');
insert into wishlist values('B1005','P3005');


create table cart (
buyer_id varchar(30),
prod_id varchar(30),
quantity int,


constraint wishlist_pk primary key (prod_id,buyer_id)

);

insert into cart values('B1001','P3003',1);
insert into cart values('B1003','P3001',2);
insert into cart values('B1001','P3002',1);
insert into cart values('B1005','P3006',3);
insert into cart values('B1004','P3004',1);
insert into cart values('B1005','P3005',1);
