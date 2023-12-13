CREATE DATABASE SchoolManagement;
USE SchoolManagement;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ClassID INT,
    
);
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
)
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);
ALTER TABLE Student
ADD FOREIGN KEY (ClassID)
REFERENCES Classes(ClassID);

CREATE INDEX IX_Student_ClassID
ON Student (ClassID);

CREATE INDEX IX_Subjects_SubjectName
ON Subjects (SubjectName);

select * from Student