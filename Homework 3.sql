/*
Folorunsho Atanda
Homework 3
*/

-- Create Database
create database if not exists Homework3;
use Homework3;

-- Table of groups
CREATE TABLE user_groups(
GroupID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
GroupName VARCHAR(255) NOT NULL
);

INSERT INTO user_groups(GroupName)
VALUES
('I.T'),
('Sales'),
('Administration'),
('Operations');

-- Table of users
CREATE TABLE users(
UserID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
UserName VARCHAR(255) NOT NULL,
GroupID INT NULL,
CONSTRAINT FOREIGN KEY(GroupID)
REFERENCES user_groups(GroupID)
ON DELETE SET NULL
);

INSERT INTO users(UserName, GroupID)
VALUES
('Modesto', 1),
('Ayine', 1),
('Christopher', 2),
('Cheong Woo', 2),
('Saulat', 3),
('Heidy', NULL);

-- Table of rooms
CREATE TABLE rooms(
RoomID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Room VARCHAR(255) NOT NULL
);

INSERT INTO rooms(Room)
VALUES
('101'),
('102'),
('Auditorium A'),
('Auditorium B');

-- Table of group access
CREATE TABLE group_access(
AccessID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
GroupName VARCHAR(255) NOT NULL,
RoomID INT NULL,
CONSTRAINT FOREIGN KEY(RoomID)
REFERENCES rooms(RoomID)
ON DELETE SET NULL
);

INSERT INTO group_access(GroupName, RoomID)
VALUES
('I.T', 1),
('I.T', 1),
('Sales', 2),
('Sales', 3),
('Adminsitrator', NULL);

-- Question 1
SELECT
UG.GroupName AS 'Group',
U.UserName AS 'User Name'
FROM user_groups AS UG
LEFT JOIN users AS U
ON UG.GroupID = U.GroupID;

-- Question 2
SELECT 
R.Room AS 'Room',
GA.GroupName AS 'Group'
FROM rooms AS R
LEFT JOIN group_access AS GA
ON R.RoomID = GA.RoomID;

-- Question 3
SELECT distinct
U.UserName As 'User Name',
UG.GroupName AS 'Group',
R.Room AS 'Room'
FROM users AS U
Left JOIN user_groups AS UG
ON U.GroupID = UG.GroupID
left JOIN group_access AS GA
ON UG.GroupName = GA.GroupName
Left JOIN rooms AS R
ON GA.RoomID = R.RoomID
ORDER BY U.UserName, UG.GroupName, R.Room;
