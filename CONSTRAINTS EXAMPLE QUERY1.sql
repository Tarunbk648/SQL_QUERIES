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



