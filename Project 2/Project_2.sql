/*
Folorunsho Atanda, Ron, Xhulia, Ismoo
Project 2
*/

-- Create database (schema)
create database if not exists project_2;
use project_2;

-- Create table diabetes
create table if not exists diabetes(
ID int auto_increment primary key not null,
Pregnancies int null,
Glucose int null,
BloodPressure int null,
SkinThickness int null,
Insulin int null,
BMI float null,
DPF float null,
Age int null,
Outcome bool null
);

-- Load csv file into table
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/diabetes.csv'
into table diabetes
fields terminated by ',' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;


-- View table
select * from diabetes;
