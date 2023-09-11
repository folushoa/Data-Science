/*
Folorunsho Atanda
Assignment 2: Loading information from a SQL DB to R
*/

-- Create database (schema)
create database if not exists assignment_2;
use assignment_2;

-- Create table of movies rating
create table popular_movie_rating(
ID int auto_increment primary key not null,
Person_Name varchar(255) not null,
Movie_Name varchar(255) not null,
Movie_Rating int null
);

insert into popular_movie_rating(Person_Name, Movie_Name, Movie_Rating)
values
('Kola', 'Barbie', 3),
('Kola', 'Indiana Jones', 3),
('Kola', 'Oppenheimer', 5),
('Kola', 'TMNT: Mutant Mayhem', 4),
('Kola', 'Nimona', 4),
('Kola', 'Meg 2', null),
('Renato', 'Barbie', null),
('Renato', 'Indiana Jones', null),
('Renato', 'Oppenheimer', 5),
('Renato', 'TMNT: Mutant Mayhem', null),
('Renato', 'Nimona', null),
('Renato', 'Meg 2', 3),
('Taylor', 'Barbie', 4),
('Taylor', 'Indiana Jones', 3),
('Taylor', 'Oppenheimer', 5),
('Taylor', 'TMNT: Mutant Mayhem', null),
('Taylor', 'Nimona', 4),
('Taylor', 'Meg 2', 3),
('Stephen', 'Barbie', 4),
('Stephen', 'Indiana Jones', 3),
('Stephen', 'Oppenheimer', 4),
('Stephen', 'TMNT: Mutant Mayhem', null),
('Stephen', 'Nimona', null),
('Stephen', 'Meg 2', 3),
('Ahmed', 'Barbie', 3),
('Ahmed', 'Indiana Jones', 3),
('Ahmed', 'Oppenheimer', 5),
('Ahmed', 'TMNT: Mutant Mayhem', null),
('Ahmed', 'Nimona', 3),
('Ahmed', 'Meg 2', 3),
('Mercedes', 'Barbie', 5),
('Mercedes', 'Indiana Jones', 3),
('Mercedes', 'Oppenheimer', 5),
('Mercedes', 'TMNT: Mutant Mayhem', null),
('Mercedes', 'Nimona', 4),
('Mercedes', 'Meg 2', 3),
('Pam', 'Barbie', 3),
('Pam', 'Indiana Jones', 3),
('Pam', 'Oppenheimer', 5),
('Pam', 'TMNT: Mutant Mayhem', null),
('Pam', 'Nimona', null),
('Pam', 'Meg 2', null),
('Deji', 'Barbie', 3),
('Deji', 'Indiana Jones', 3),
('Deji', 'Oppenheimer', 4),
('Deji', 'TMNT: Mutant Mayhem', 4),
('Deji', 'Nimona', 4),
('Deji', 'Meg 2', 3),
('Sauani', 'Barbie', 5),
('Sauani', 'Indiana Jones', 3),
('Sauani', 'Oppenheimer', 3),
('Sauani', 'TMNT: Mutant Mayhem', 3),
('Sauani', 'Nimona', 5),
('Sauani', 'Meg 2', 2);