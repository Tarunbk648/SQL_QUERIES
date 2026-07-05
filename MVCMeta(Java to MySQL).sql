create database MVCMeta;
use MVCMeta;

create table meta(
   id int primary key auto_increment,
   user_name varchar(50),
   email varchar(50),
   password varchar(50),
   adhaar_number varchar(50));

select * from meta;