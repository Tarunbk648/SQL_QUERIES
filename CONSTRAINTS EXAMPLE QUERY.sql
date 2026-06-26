select * from citizens_info;
select * from waste_collections_info;

alter table waste_collection_info rename column vehicle_id to automobile_id;
alter table waste_collection_info rename to waste_collections_info;

select * from waste_collections_info where collection_id=1001 and citizen_id=101;
select * from waste_collections_info where collection_id=1001 or citizen_id=101;
select * from waste_collections_info where collector_name="Harish" and citizen_id=104;
