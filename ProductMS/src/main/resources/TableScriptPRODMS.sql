drop database if exists prod_db;
create database prod_db;
use prod_db;

create table product (
prod_id varchar(30) not null,
product_name varchar(100),
price float,
stock int,
description varchar(500),
image varchar(50),
seller_id varchar(30),
category varchar(30),
sub_category varchar(30),
product_rating float,

constraint product_pk primary key (prod_id)
);

insert into product values('P3001','Samsung Galaxy M31',14999.00,15,'Ocean blue colour, 6GB/128GB, Exynos 9611 Processor 2.3GHz Octa Core, 64MP Quad Camera, 6.4 inches display,6000 mAh Battery ','samsung-galaxyM31.png','S1','Mobiles','SmartPhones',4.5);
insert into product values('P3002','Redmi 9',8499,30,'Carbon black colour, 4GB/64GB, Helio G35 Processor 2.3GHz Octa Core, 13+2MP Rear Camera, 6.53-inch Display, 5000 mAh Battery', 'redmi-9.png','S1','Mobiles','SmartPhones',4); 
insert into product values('P3003','Relame 8',16999,25,'Cyber silver colour, 8GB/128GB, MediaTekHelio G95 Processor 2.3GHz Octa Core, 64MP Quad Camera, 6.4-inch Display, 5000 mAh Battery', 'realme-8.png','S1','Mobiles','SmartPhones',4.3); 
insert into product values('P3004','Mi 4A PRO 80 cm(32 inch)',14999,18 ,' Android TV with Google Data Saver, HD Ready 1366 x 768 Pixels, 20 W Sound Output, 3 x HDMI, 2 x USB, 2 Speakers, 60 Hz Refresh Rate, LED, Built in Wi-Fi','mi-4aTV.png','S2','Electronics','Televisions',4.3);
insert into product values('P3005','Realme 80 cm(32 inch) HD Ready LED TV',15999,20, ' Android TV, HD Ready 1366 x 768 Pixels, 24 W Sound Output, 3 x HDMI, 2 x USB, 4 Speakers, 60 Hz Refresh Rate, LED, Built in Wi-Fi','realme-80TV.png','S2','Electronics','Televisions',4.6);
insert into product values('P3006','Samsung 80 cm(32 inch) HD Ready LED Smart TV',16999,20, 'HD Ready 1366 x 768 Pixels, 20 W Sound Output, 2 x HDMI, 1 x USB, 2 Speakers, 60 Hz Refresh Rate, LED, Built in Wi-Fi','samsung-80TV.png','S3','Electronics','Televisions',4.4);





create table subscribed_product (
buyer_id varchar(30),
prod_id varchar(30),
quantity int,

constraint subs_prod_pk primary key (buyer_id,prod_id)
);

insert into subscribed_product values('B1001','P3001',2);
insert into subscribed_product values('B1001','P3005',1);
insert into subscribed_product values('B1003','P3002',2);
insert into subscribed_product values('B1004','P3001',3);
insert into subscribed_product values('B1004','P3002',5);
insert into subscribed_product values('B1004','P3003',1);
insert into subscribed_product values('B1005','P3006',1);
insert into subscribed_product values('B1005','P3005',3);
