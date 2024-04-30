--CREATE DATABASE Ab106Practise

--use Ab106Practise

--CREATE TABLE Students (
--   id int PRIMARY KEY Identity,
--    Name varchar(50)NOT NULL,
--   Surname varchar(50)NOT NULL DEFAULT('XXX'),
--    Point int CHECK(Point>=0 and Point<100) NOT NULL,
--	Email varchar(50)NOT NULL UNIQUE
--);

Select * from Students

--INSERT INTO Students (Name, Surname, Point, Email)
--VALUES ('Ali', 'Shukurov', 50, 'ali@gmail.com')
INSERT INTO Students (Name, Point, Email)
VALUES ('garib', 50, 'garib@gmail.com')

--DRop table Students
