-- Constraints in sql
-- 1.not null
-- 2.unique
-- 3.primary key
-- 4.foreign key
-- 5.check
-- 6.default


create database facebook_db;
use facebook_db;

create table facebook_info(
  facebook_id int primary key,
  facebook_username varchar(50) not null unique,
  phone_number bigint check(length(phone_number)=10),
  nationality varchar(50) default 'Indian');
  select * from facebook_info;
 
  
  create table post_info(
     post_id int primary key,
     post_likes varchar(50),
     facebook_id int,
     foreign key(facebook_id) references facebook_info(facebook_id));
     select * from post_info;
     
     
	-- INSERTING INTO facebook_info table
    insert into facebook_info(facebook_id, facebook_username, phone_number)
    value(102, "Yogesh", 9756427890);
    
	insert into facebook_info(facebook_id, facebook_username, phone_number)
    value(103, "Hanumanth", 9457812069);
    
	insert into facebook_info(facebook_id, facebook_username, phone_number)
    value(104, "Gagan", 9854702699);
    
    
    -- INSERTING INTO post_info table
    insert into post_info(post_id, post_likes, facebook_id)
    value(601, '78',102);
    
    insert into post_info(post_id, post_likes, facebook_id)
    value(602, '90',103);
    
  
--     update the foreign key using a post_info(child)
update post_info set facebook_id=104 where post_id=602;   -- Accepted
update post_info set facebook_id=107 where post_id=601;    -- Not accept bcz Cannot add or update a child row: a foreign key constraint fails (`facebook_db`.`post_info`, CONSTRAINT `post_info_ibfk_1` FOREIGN KEY (`facebook_id`) REFERENCES `facebook_info` (`facebook_id`)) means fails of facebook_info facebook_id


-- delete parent facebook_info data 
delete from facebook_info;          --     Not accepted bcz it will affects the foreign key constraints will fails

-- delete parent post_info data 
delete from post_info where post_id=602;   -- Accepted facebook_id=104 (foreign key)

-- Now try to delete a facebook_id=104 from facebook_info
delete from facebook_info where facebook_id=104;   -- Accepted after deleting from child then the parent facebook_info will accept to delete the foreign key



