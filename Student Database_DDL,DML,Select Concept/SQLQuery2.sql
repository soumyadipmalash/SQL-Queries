  
                     -- Different Variety Of 'Select' Statement with Various Functions --    @Soumyadip Malash

--SELECT STSTEMENT USE CASE -------------->
--select * from student;
--select distinct City from student;
--select Firstname,Age,age+3 from student;
--select Firstname,Age,age+3"New Age" from student;

--CONCATENATION OF TWO COLUMN -------------------->
--Select Firstname +'-'+ City as "Concatenate Column" from student;

--SELECT STATEMENT------------------->
--select * from student where Address='Paschim Medinipur';
--select * from student where Age>=21;  
--select * from student where Age>21;
--select * from student where cgpa=9.1;
--select * from student where Age>all (select v from (values(21),(20)) as t(v));
--select * from student where Age>any (select v from (values(21),(20)) as t(v));
--select 5*5;    --> Arithmatic Operation 
--select 10/5;

--SPECIAL OPERATOR----------------->
--select * from student where Age between 20 and 21;
--select * from student where Address in('Kolkata','Bhubaneswar');
--select top 4 * from student order by cgpa desc; -- 'TOP' clause basically selects from the top rows.


--LOGICAL OPERATOR--------------->
--select * from student where city='UP' and Age=22;
--select * from student where Address='Paschim medinipur' or Age=22;
--select * from student where not(Marks=70 or cgpa=9.30);

--LIKE OPERATOR ------------------>
--select * from student where Firstname like 'S%';-- this means the first character is 's'.
--select * from student where Firstname like '%m'; -- this means the last character is 'm'.
--select * from student where Firstname like '%i%'; -- this means there should me more character before and after 'i'.
--select * from student where Firstname like '_o%';-- this represents this character present in the second position of the word.
--select * from student where Firstname like '_h_r%';-- this means the second character is 'h' and fourth character is 'r';

--SORTING ------------------>
--select * from student order by cgpa;
--select * from student order by cgpa desc;
--select * from student order by Age,cgpa desc;
--select * from student order by 4 desc; --This will rearrange according to the 4th Column .

-- DISPLAY THE TODAY'S DATE & TIME --------------------->
--select getdate() as 'Date & Time';
--select getutcdate() as 'UTC Date & Time';
--select MONTH(GETDATE()) as Month;
--select YEAR(GETDATE()) as YEAR;
--select DAY(GETDATE()) as DAY;


--ROWID(Each Row has a Unique ROWID ,It is an 18 bit number )--------------->
--(In My SQL this is an inbuilt function but in SQL Server this is not.)
select * , ROW_NUMBER() over(order by cgpa desc) RowNum from student;
