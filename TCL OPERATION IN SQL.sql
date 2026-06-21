-- TCL(Transaction query Language)
-- 1.commit
-- 2.rollback
-- 3. set autocommit;
-- 4. truncate


create table image_info(
     image_id int,
     image_name varchar(50),
     image_caption varchar(50));
	 select * from image_info;
     
     set autocommit=0; --  "Don't save changes automatically."  MySQL saves every query immediately.
     
     insert into image_info(image_id, image_name, image_caption)
     value(1, 'Travelling_image','Good_vibes');
     
	 insert into image_info(image_id, image_name, image_caption)
     value(2, 'Cooking_image','Good_Tests');
     
	 insert into image_info(image_id, image_name, image_caption)
     value(3, 'Reading_image','Good_Understanding');
     
	 insert into image_info(image_id, image_name, image_caption)
     value(4, 'Swmming_image','Good_feels_to_body');
     
     commit;  
     delete from image_info;   --  TEMPORARY DELETE table will comes back after rollback
     rollback;
     truncate table image_info;    -- deletes all the rows and column from the table similar to the delete but the rollback data never comes back its a PERMANENT DELETE
     
     
     --  very very very important
--      set autocommit=0--> insert 4 rows---> select * from image_info ---> commit(save all changes)---> delete---> rollback( cancle delete and get last commit state)---> select * from image_info ====> 4 rows will be printed
--      
--      set autocommit=0--> insert 4 rows---> select * from image_info ---> delete--->commit(save all changes)--->  rollback(cancle commit and get previous delete state)---> select * from image_info ====> No rows will be printed (empty)
--      


-- very very very important
-- set autocommit=0---> insert 4 rows---> select * from image_info ---> commit(save all changes)---> truncate ----> rollback---> select * from image_info ====> Empty table

-- set autocommit=0---> insert 4 rows---> select * from image_info ---> truncate--->commit(save all changes)----> rollback---> select * from image_info ====> Empty table



