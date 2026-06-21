
-- DDL(Data defination Language)
-- 1.create
-- 2.alter
-- 3.drop
-- 4.truncate
-- 5.insert

-- DML(Data Manipulation language)
-- 1.insert
-- 2.update 
-- 3.delete
-- 4.select

-- --CREATING A 5 TABLES WITH 10 COLUMNS
create table hospital_info(
     hospital_id int,
     hospital_name varchar(50),
     location varchar(50),
     contact_number bigint,
     email varchar(50),
     established_year int,
     total_beds int,
     total_doctor int,
     total_staff int,
     opening_time time);
     
     select * from medical_center_info;
     desc medical_center_info;



create table doctor_info(
     doctor_id int,
     doctor_name varchar(50),
     specialization varchar(50),
     gender varchar(50),
     age int,
     qualification varchar(50),
     experience int,
     salary decimal(10,2),
     phone_number bigint,
     email varchar(50));



create table patient_info(
     patient_id int,
     patient_name varchar(50),
     gender varchar(50),
     age int,
     blood_group varchar(50),
     address varchar(50),
     phone_number bigint,
     email varchar(50),
     disease varchar(50),
     admission_date date
     );
     
  
  
create table appointment_info(
     appointment_id int,
     patient_id int,
     doctor_id int,
     appointment_date date,
     appointment_time time,
     token_number int,
     consultant_fee decimal(10,2),
     symptom varchar(50),
     diagnosis varchar(50),
     prescription varchar(50)
    );
    
    
    
  create table payment_info(
     bill_id int,
     patient_id int,
     appointment_date date,
     room_charges decimal(10,2),
     medicine_charges decimal(10,2),
     test_charges decimal(10,2),
     doctor_fee decimal(10,2),
     discount decimal(10,2),
     tax decimal(10,2),bankbankbank
     total_amount decimal(10,2)
    );
    

-- RENAMING ALL THE TABLE NAME 
alter table hospital_info rename to medical_center_info;

alter table patient_info rename to patient_records_info;

alter table doctor_info rename to physician_info;

alter table appointment_info rename to consultation_info;

alter table payment_info rename to billing_info;



-- ADD FOUR COLUMNS TO THE EACH TABLE
alter table medical_center_info add column closing_time time,add column status varchar(50), add column ratings decimal(2,1),add column website varchar(50); 

alter table physician_info add column hospital_id int, add column status varchar(50), add column shift_type varchar(50), add column room_number int;

alter table patient_records_info add column hospital_id int, add column status varchar(50), add column weight decimal(5,2), add column height decimal(5,2);

alter table consultation_info add column appointment_status varchar(50), add column remarks varchar(50), add column followup_date date, add column room_number int;

alter table billing_info add column payment_mode varchar(50), add column payment_status varchar(50), add column bill_date date, add column transaction_id varchar(50);



-- DROP TWO COLUMN FROM EACH TABLE
alter table billing_info drop payment_mode, drop payment_status;

alter table consultation_info drop appointment_status, drop remarks;

alter table medical_center_info drop closing_time, drop ratings;

alter table patient_records_info drop hospital_id, drop weight;

alter table physician_info drop hospital_id, drop shift_type;


-- RENAME 3 COLUMN FROM EACH TABLE
alter table billing_info  rename column bill_id to billing_id, rename column patient_id to Patient_id, rename column appointment_date to Appointment_date;

alter table consultation_info rename column appointment_id to Appointment_id, rename column patient_id to Patient_id, rename column doctor_id to Doctor_id;

alter table medical_center_info rename column hospital_id to Hospital_id, rename column hospital_name to Hospital_name, rename column location to Location;

alter table patient_records_info rename column patient_id to Patient_id, rename column patient_name to Patient_name, rename column gender to Gender;

alter table physician_info rename column doctor_id to Doctor_id, rename column doctor_name to Doctor_name, rename column specialization to Specialization;


-- MODIFY 2 COLUMN FROM EACH TABLE
alter table billing_info modify column room_charges bigint, modify column medicine_charges int;

alter table consultation_info modify column token_number bigint, modify column consultant_fee int;

alter table medical_center_info modify column established_year bigint, modify column total_beds bigint;

alter table patient_records_info modify column age bigint, modify column height int;

alter table physician_info modify column age bigint, modify column experience bigint; 


-- INSERTING 8 ROWS DETAILS TO THE EACH TABLE
insert into billing_info(billing_id, Patient_id, Appointment_date, room_charges, medicine_charges, test_charges, doctor_fee, discount)
value(1, 123, '2025-08-15', 67000, 300, 4000, 12000, 0), (2, 132, '2025-08-16', 68000, 500, 5000, 11000, 100), (3, 143, '2026-07-13', 50000, 400,7000,13000, 20),(4, 150, '2026-07-12', 60000, 300, 4000, 16000, 10),
(5, 170, '2026-02-11', 60000, 200,3500, 9000,200), (6, 120, '2026-03-12', 40000, 120, 3000, 8000, 100), (7, 125, '2025-03-12', 50000, 100, 2000,6000, 20),(8, 160, '2025-06-14', 60000, 120, 3000, 7000, 30); 

select * from billing_info;



insert into consultation_info(Appointment_id, Patient_id, Doctor_id, appointment_date, appointment_time, token_number, consultant_fee, symptom)
value(1, 123, 4900, '2025-06-12', '22:00:00', 7800, 600, 'thyroid'), (2,143, 5000, '2026-07-13', '19:00:00', 5600, 800, 'fever'), (3, 487, 5600, '2026-06-13', '13:00:00', 7800, 900, 'cold'),
(4, 560, 7100, '2026-09-14', '16:19:15', 9800, 580, 'stomuch pain'), (5, 469, 4100,'2024-01-17', '15:12:00', 7600, 600, 'leg pain'), (6, 350, 7200,'2025-02-13', '12:45:13', 5600, 700, 'Gangrin'),
(7, 660, 3900, '2025-06-13', '17:28:13', 5600, 440, 'head acke'), (8, 500, 4300, '2026-03-14', '18:19:00', 6700, 300, 'orthopedics');

select * from consultation_info;


insert into medical_center_info(Hospital_id, Hospital_name, Location, contact_number, email, established_year, total_beds, total_doctor)
value(1, "Forties Health", "Rajajinagar", 9731036881, 'tarun@gmail.com',2003, 32, 140), (2, "Narayana Clinic", "Vijayanagar", 9945344239, 'Ramesh@gmail.com',2001, 34, 201),
(3, "Vaidhehi clinic", "RR Puram", 9908734120, 'kiran@gmail.com',1940, 45, 180),(4, "VarahaGroup and clinic", "VV Puram", 9908745670, 'Rajesh@gmail.com',1966, 85, 80),
(5, "SriKrishna clinic", "Majestic", 9903457890, 'Yogesh@gmail.com',1990, 65, 18),(6, "Suprith clinic", "Hydrabadh", 9975346783, 'Suprith@gmail.com',2009, 66, 188),
(7, "Hari clinic", "BTM", 9340175601, 'Hari@gmail.com',1948, 38, 100),(8, "Umesh clinic", "KR Puram", 9908735608, 'Umesh@gmail.com',1955, 55, 90);

select * from medical_center_info;

insert into patient_records_info(Patient_id, Patient_name, Gender, age, blood_group, address, phone_number, email)
value(2,"Praveen", 'Male', 22, 'o_positive', 'Vijayanagar', 9945344239, 'praveen@gmail.com'),
(3,"Darshan", 'Male', 22, 'b_positive', 'RV Road', 9482422607, 'darshan@gmail.com'), (4,"Kiran", 'Male', 21, 'b_positive', 'KR puram', 9481054089, 'kiran@gmail.com'),
(5,"Sampath", 'Male', 20, 'ab_positive', 'Yelakanka', 984751289, 'sampth@gmail.com'), (6,"Suyog", 'Male', 25, 'o_negative', 'BTM', 8745961263, 'suyog@gmail.com'),
(7,"Deepak", 'Male', 22, 'a_positive', 'Jayanagar', 9731084581, 'deepak@gmail.com'), (8,"Vamshi", 'Male', 22, 'b_positive', 'Kalyan Nagar', 978745623, 'vamshi@gmail.com');

select * from patient_records_info;


insert into physician_info(Doctor_id, Doctor_name, Specialization, gender, age, qualification, experience, salary)
value(1, 'DR.Ravi', 'Surgon', 'Male', 25, 'MBBS', 12, 200000),(2, 'DR.Ranveer', 'Cardeologist', 'Male', 29, 'BDS', 11, 400000),
(3, 'DR.Thanveer', 'Neurologist', 'Male', 24, 'MD', 14, 600000),(4, 'DR.Fayaz', 'Gynacologiest', 'Male', 30, 'MD', 16, 700000),
(5, 'DR.Hanumath', 'Yoga Master', 'Male', 22, 'BMS', 20, 500000),(6, 'DR.Ganesh', 'Neurologist', 'Male', 24, 'MMS', 14, 1000000),
(7, 'DR.Dinesh', 'Radiologist', 'Male', 22, 'BMS', 44, 800000),(8, 'DR.Vaibhave', 'Homyopathi', 'Male', 23, 'BMS', 44, 800000);


select * from physician_info;



-- DQL(DATA QUERY LANGUAGE) STATEMENT IN SQL
-- 1.select
-- 2.From
-- 3.where
-- 4.Having
-- 5.or, not, and, is, in
-- 6.group by
-- 7.order by
-- 8.join


select distinct Doctor_name from physician_info;
select * from physician_info where Specialization='Surgon' or Specialization='Cardeologist';    
select * from physician_info where Specialization='Surgon' or Doctor_name='DR. Ranveer'; -- accepts where one value is correct from any table here Surgon will points to DR.Ravi so prints in a console thats why OR (means ATHAVA)
select * from physician_info where Specialization='Surgon' and Specialization='Cardeologist';  -- expects surgon and cardeologist from the same row or same doctor so doesn't print any values
select * from physician_info where Doctor_name in('DR.Ravi', 'DR.Dinesh');
select * from physician_info where Doctor_name not in('DR.Ravi', 'DR.Dinesh');
select * from physician_info where phone_number is null;
select * from physician_info where phone_number is not null;
select * from physician_info where age between 20 and 23;
select * from physician_info where age not between 20 and 23;
select * from physician_info where age >25;

-- _ --> underscore will skip and % will ignore the chracter using like keyword
select * from physician_info where experience like '_2%';  -- skip first chracter and print 2 chracter after ignore everything
select * from physician_info where Doctor_name like '%i%';  -- prints where ever i is present
select * from physician_info where qualification like 'B%'; -- prints the value where first character is B after ignore everything
select * from physician_info where experience like '_1%';  -- skip first number prints second number 1 after and after ignore everything

-- Aggregate function
select count(*) from physician_info; 
select sum(salary) from physician_info;
select min(age) from physician_info;
select max(age) from physician_info;
select avg(salary) from physician_info;


-- group by and having
select qualification, sum(salary) from physician_info  group by qualification     having sum(salary)>500000;

-- order by
select * from physician_info order by age desc;
select * from physician_info order by Doctor_name;   -- prints in a ascending order normally all the prints in ascending order by default
select * from physician_info order by Doctor_name DESC;

