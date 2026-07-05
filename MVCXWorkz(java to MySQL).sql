create database xworkz;
use xworkz;

create table training(
   training_id varchar(50),
   course_name varchar(50),
    duration varchar(50),
    title varchar(50));
    
    drop table training;
    
select * from training;

delete from training where title="JAVA";

insert into training values("HG22ROM", "Advanve java", "3 months", "JAVA");
insert into training values("RR22ROM", "Database", "3 months", "SQL");

update training set course_name="Core_java" where training_id="SG22ROM";