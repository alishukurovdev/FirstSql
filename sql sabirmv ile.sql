use AB106Second


CREATE TABLE Students (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(32),
    Surname NVARCHAR(32),
    Age INT CHECK (Age > 15),
    Point Int check (Point<100)
)

Create Table Subjects(
	Id int identity primary key,
	Name nVarchar(32)
	)

	Create Table StudentsToSubjects(
	Id int identity primary key,
	StudentsId INT NOT NULL REFERENCES Students(Id),
	SubjectsId INT NOT NULL REFERENCES Subjects(Id)
	)
	


	--SELECT  s.name +' '+ s.Surname AS FullName, sub.Name AS Subjects
	--FROM Students AS s
	--JOIN StudentsToSubjects AS ss
	--ON s.id=ss.Id
	--JOIN Subjects as sub
	--on ss.SubjectsId=sub.Id
	
	SELECT * FROM  StudentsToSubjects

	select * from Subjects

	SELECT  s.name +' '+ s.Surname AS FullName,COUNT(sub.name) AS Subjects
	FROM Students AS s
	JOIN StudentsToSubjects AS ss
	ON s.id=ss.StudentsId
	JOIN Subjects as sub
	on ss.SubjectsId=sub.Id
	GROUP BY  s.Name, s.Surname

	Having count(sub.Name)>=3
	

	CREATE VIEW GETStudentsToSubjects as
	SELECT  s.name +' '+ s.Surname AS FullName, sub.Name AS Subjects
	FROM Students AS s
	JOIN StudentsToSubjects AS ss
	ON s.id=ss.Id
	JOIN Subjects as sub
	on ss.SubjectsId=sub.Id


	select Count(Subjects) from GETStudentsToSubjects