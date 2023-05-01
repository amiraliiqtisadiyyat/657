CREATE DATABASE University
USE University

CREATE TABLE Groups
( Id INT PRIMARY KEY IDENTITY,
No NVARCHAR(7) NOT NULL,
StartDate DATETIME2
)

INSERT INTO Groups (No,StartDate)
VALUES 
('P334','2022.01.13'),
('P335','2019.09.17'),
('P134','2021.08.10'),
('P328','2018.12.23')

SELECT * FROM  Groups 


CREATE TABLE Students 
(Id INT PRIMARY KEY IDENTITY,
FullName NVARCHAR(30) NOT NULL,
Point INT CHECK (Point<=100),
GroupId INT NOT NULL,
FOREIGN KEY (GroupId)REFERENCES Groups(Id)
)


INSERT INTO Students(FullName,Point,GroupId)
VALUES
('Gulmirze Seyidov',100,2),
('Aydin Agamaliyev',76,3),
('Seid Selimov',91,1),
('Meftun Quliyev',88,4)

