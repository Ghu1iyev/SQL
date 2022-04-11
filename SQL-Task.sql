CREATE DATABASE Company
DROP DATABASE Company

CREATE DATABASE Company
USE Company

CREATE TABLE Employee(
   Id int,
   [Name] nvarchar(20),
   Surname nvarchar(20),
   WorkName nvarchar(20),
   WorkpNo varchar(10),
   Salaray int
)
CREATE TABLE OldEmployee(
    Id int
)
DROP TABLE OldEmployee

ALTER TABLE Employee
DROP COLUMN [Name]

exec sp_rename 'Employee.WorkName','Job'

CREATE TABLE AsisstantWorkers(
   Id int,
   [Name] nvarchar(20),
   Surname nvarchar(20),
   WorkName nvarchar(15),
   WorkpNo varchar(10),
   Salaray int
)
ALTER TABLE Employee
ADD [Name] nvarchar(20)

Insert Into Employee(Id,Name,Surname,Job,WorkpNo,Salaray)
values(1,'Fazil','Quliyev','Programmer','AP204',3000)

Insert Into AsisstantWorkers(Id,Name,Surname,WorkName,WorkpNo,Salaray)
values(1,'Fazil','Quliyev','Programmer','AP204',1000),
(2,'Əbubəkir','Quliyev','Programmer','AP204',700),
(3,'Bağdagül','Quliyev','Programmer','AP204',1200),
(4,'Qəzənfər','Quliyev','Programmer','AP204',2500),
(5,'Aftandil','Quliyev','Programmer','AP204',2800)


SELECT * from Employee
Select * from AsisstantWorkers

SELECT Name as Ad, Salaray as Maaş from AsisstantWorkers where Salaray>2000
Select Name as Ad, Surname as Soyad, Salaray as Maaş from AsisstantWorkers where Salaray>1000 and Salaray<2000