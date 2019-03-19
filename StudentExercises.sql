CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
	SlachHandle VARCHAR(50) NOT NULL,
    CohortId INT NOT NULL,
);

Create TABLE Cohort (
	Id Integer Not null primary key identity,
	[Name] VARCHAR (50) NOT NULL,
);


Create TABLE AssignedExercises (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	StudentId Int NOT NULL,
	ExerciseId Int NOT NULL,
);


CREATE TABLE Instructor (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
	SlachHandle VARCHAR(50) NOT NULL,
    CohortId INT NOT NULL,
);

CREATE TABLE Exercise (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	[Name] VARCHAR (50) NOT NULL,
	[Language] VARCHAR(50) NOT NULL,
);

/*You should have 2-3 cohorts, 5-10 students, 4-8 instructors, 2-5 exercises and each student should be assigned 1-2 exercises.*/

Insert Into Cohort (Name) Values ('Cohort29');
Insert Into Cohort (Name) Values ('Cohort28');

Select * from Cohort;

Insert into Student (FirstName, LastName, SlachHandle, CohortId) Values ('Mary', 'Remo','@maryremo', 1);
Insert into Student (FirstName, LastName, SlachHandle, CohortId) Values ('Allisom', 'Collins','@ally', 2);
Insert into Student (FirstName, LastName, SlachHandle, CohortId) Values ('Ashwin', 'Prakash','@ashcash', 1);
Insert into Student (FirstName, LastName, SlachHandle, CohortId) Values ('Brittany', 'Janeway','@britt', 2);
Insert into Student (FirstName, LastName, SlachHandle, CohortId) Values ('Dan', 'Brewer','@brewster', 1);

Select * from Student;

Insert into Instructor (FirstName, LastName, SlachHandle, CohortId) Values ('Andy', 'Collins','@yoitsandy', 1);
Insert into Instructor (FirstName, LastName, SlachHandle, CohortId) Values ('Jisie', 'David','@yoitsjisie', 2);
Insert into Instructor (FirstName, LastName, SlachHandle, CohortId) Values ('Leah', 'Gwin','@yoitsleah', 1);
Insert into Instructor (FirstName, LastName, SlachHandle, CohortId) Values ('Megan', 'huh','@yoitsmegan', 2);

Select * from Instructor;

Insert into Exercise ([Name], [Language]) Values ('ChickenMonkey','Javascript');
Insert into Exercise ([Name], [Language]) Values ('DepartmentAndEmployees','c#');

Select * from Exercise;

Insert into AssignedExercises (StudentId, ExerciseId) Values (1,1);
Insert into AssignedExercises (StudentId, ExerciseId) Values (2,2);
Insert into AssignedExercises (StudentId, ExerciseId) Values (3,1);
Insert into AssignedExercises (StudentId, ExerciseId) Values (4,2);
Insert into AssignedExercises (StudentId, ExerciseId) Values (5,1);

Select * from AssignedExercises;

