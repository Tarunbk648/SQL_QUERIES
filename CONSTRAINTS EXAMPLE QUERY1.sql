select * from citizens_info;
select * from waste_collections_info;

alter table waste_collection_info rename column vehicle_id to automobile_id;
alter table waste_collection_info rename to waste_collections_info;

select * from waste_collections_info where collection_id=1001 and citizen_id=101;
select * from waste_collections_info where collection_id=1001 or citizen_id=101;
select * from waste_collections_info where collector_name="Harish" and citizen_id=104;
select * from waste_collections_info where collection_weight>200;
select collector_name as worker_name from waste_collections_info;    --  Aliasing in java prints only in runtime

-- --Underscore and percentage symbol in select statement 
select * from waste_collections_info where collector_name like "_a%" ;
select * from waste_collections_info where collection_weight like "1%";
select * from waste_collections_info where citizen_id like "%2%";
select * from waste_collections_info where collector_name like "___a%";  -- --Three space before then ignore 

-- Aggregate function in java
select count(*) from waste_collections_info;
select sum(collection_weight) as wastages_weight from waste_collections_info;
select avg(collection_weight) from waste_collections_info;
select min(collection_weight) from waste_collections_info;
select max(collection_weight) from waste_collections_info;

-- Group by, having and order by
select ward_number, min(ward_number) from citizens_info group by ward_number having ward_number>50;
select account_status, count(account_status) from citizens_info group by account_status having account_status="INACTIVE";
select disposal_center, max(collection_weight) from waste_collections_info  where citizen_id=104 group by disposal_center;
select collector_name, max(collection_weight) from waste_collections_info group by collector_name having max(collection_weight)>261;

-- order by
select * from citizens_info order by citizen_name;
select * from citizens_info order by house_number desc;
select * from waste_collections_info order by collector_name;
select * from waste_collections_info order by citizen_id desc;


-- 27/06/2026
-- JOINS IN SQL
select * from citizens_info cross join waste_collections_info;    -- multiply each row of citizen_info into every other rows from waste_collection_info

select cn.citizen_id, cn.citizen_name, wn.citizen_id waste_collection_id, wn.collector_name waste_collector_name from citizens_info cn inner join waste_collections_info wn where cn.citizen_id=wn.citizen_id;   -- inner join helps to join the similar column name based on the condition  

select  c.citizen_id, w.citizen_id from citizens_info c left join waste_collections_info w on c.citizen_id=w.citizen_id;  -- prints all the left rows and matching rows from the right using on keyword

select  c.citizen_id, w.citizen_id from citizens_info c right join waste_collections_info w on c.citizen_id=w.citizen_id;   -- prints all the right rows and matching rows from the left using on keyword

select  c.citizen_id, w.citizen_id from citizens_info c left join waste_collections_info w on c.citizen_id=w.citizen_id union
select  c.citizen_id, w.citizen_id from citizens_info c right join waste_collections_info w on c.citizen_id=w.citizen_id; --  --prints both the left and right outer joins  [Its a full outer joins]

select * from citizens_info  join waste_collections_info;  -- same as cross join 


-- --SUBQUERY 
select citizen_name, email from citizens_info where citizen_id in(
  select citizen_id from waste_collections_info );   --  based on the inner query waste_collection_info  citizen_id compare with citizen_id of citizen_info and display the citizen_name and email 
                                                     -- Resultant of inner query (waste_collection_info )will be the condition for citizen_info  (outer query)
select ward_number from citizens_info;                                                
                                                     
select min(ward_number) from citizens_info where ward_number> (select min(Ward_number) from citizens_info where ward_number>(select min(Ward_number) from citizens_info where ward_number>(select min(Ward_number) from citizens_info where ward_number>(select min(Ward_number) from citizens_info where ward_number>(select min(Ward_number) from citizens_info)))));
  
  select * from citizens_info order by ward_number limit 1 offset 4;  --  limit--> how much rows to print 
																	                                    	-- offest--> how much lines rows to skip
  

 

