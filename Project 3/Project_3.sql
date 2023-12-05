/*
Folorunsho Atanda, Ron Balaban, Xhulia Turkaj
Project 3
*/

-- Create database (schema)
create database if not exists project_3;
use project_3;

create table if not exists school_info(
ID int auto_increment not null primary key,
School_Name varchar(255) null,
School_Location varchar(255) null,
Acceptance_Rate varchar(255) null,
Gre_Required varchar(255) null,
Cost_Per_Credit varchar(255) null,
Avg_Work_Experience_Required varchar(255) null
);

-- Load csv file into table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/school_info.csv'
INTO TABLE school_info
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ID, School_Name, School_Location, Acceptance_Rate, Gre_Required, Cost_Per_Credit, Avg_Work_Experience_Required);


-- View table
select * from school_info;