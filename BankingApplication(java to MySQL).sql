create database bankingApp_db;
use bankingApp_db;

create table banking_info(
   user_Id int,
   user_Name varchar(50),
   user_Email varchar(50),
   user_Password varchar(50),
   address varchar(50));
   
select * from banking_info;


desc banking_info;

ALTER TABLE banking_info
ADD CONSTRAINT PK_banking_info PRIMARY KEY (user_Id);   -- add/modify a primary key to the user Id


-- Performing a join operation
create table manager_info(
      manager_Id int,
      user_Id int,
	  manager_Name varchar(50),
      manager_Email varchar(50),
      manager_Password varchar(50),
      address varchar(50),
      foreign key(user_Id) references banking_info(user_Id));
      
select * from manager_info;
