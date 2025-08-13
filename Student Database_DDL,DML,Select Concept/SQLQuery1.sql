
             -------- Creation Of Table ,DDL & DML ----------                          @ Soumyadip Malash                                 

--create table student(
--Rollno int,
--FirstName varchar(50),
--LastName varchar(50),
--Marks int,
--Address varchar(100),
--City varchar(50)
--);

--Exec sp_help student; -- This is useful to describe the table schema what are the colimns name and variable types.

-- This quiry will display the table names and the schema .
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052245,'Soumyadip','Malash',90,'Paschim medinipur','Salboni');
--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052199,'Debabrata','Paul',70,'Tripura','Tripura');
--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052263,'Abhinab','Chakraborty',80,'Kolkata','Haldia');
--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052505,'Shivam','Tiwari',70,'Jharkhand','Bhuli');
--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052239,'Shirshansh','Mishra',90,'UP','UP');
--insert into student(Rollno,Firstname,LastName,Marks,Address,City)values(22052246,'Ananya','Bisoi',80,'Kgp','Kgp');

--select * from student;

--alter table student add cgpa numeric(2,2);
--alter table student add Age int;
--select * from student;
--alter table student drop column cgpa;
--alter table student drop column Age;

--alter table dbo.student add cgpa numeric(3,2);
--update student set cgpa=9.1 where Rollno=22052245;
--update student set cgpa=7.2 where Rollno=22052199;
--update student set cgpa=7.5 where Rollno=22052505;
--update student set cgpa=9.3 where Rollno=22052239;
--update student set cgpa=8.5 where Rollno=22052246;
--select * from student;

--alter table dbo.student add Age int;
--update student set Age=22 where Rollno=22052245;
--update student set Age=22 where Rollno=22052263;
--update student set Age=21 where Rollno=22052246;
--update student set Age=22 where Rollno=22052199;
--update student set Age=22 where Rollno=22052239;
--update student set Age=21 where Rollno=22052505;
--select * from student;

--delete from student where Age=22;

--insert into student(Rollno,Firstname,LastName,Marks,Address,City,cgpa,Age)values(22052245,'Soumyadip','Malash',90,'Paschim medinipur','Salboni',9.1,22);
--insert into student(Rollno,Firstname,LastName,Marks,Address,City,cgpa,Age)values(22052263,'Abhinab','Chakraborty',70,'Kolkata','Haldia',7.2,20);
--insert into student(Rollno,Firstname,LastName,Marks,Address,City,cgpa,Age)values(22052176,'Ayus','Sribastab',75,'Bihar','Bihar',7.6,22);
--select * from student;

--update student set Rollno=22052342 where FirstName='Ananya';
--select* from student;

--alter table student add Branch varchar(4);
--update student set Branch='CSE';
--select * from student;                                   




