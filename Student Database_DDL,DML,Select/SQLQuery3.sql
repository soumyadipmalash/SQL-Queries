                                -- GROUP FUNCTION & SCALER FUNCTION --             --@SOUMYADIP MALASH     


                  -- 1. GROUP FUNCTION ->They manupulate data in a group of rows and return single result.

--SELECT * from student;
--select count(Rollno) as 'RollNo Count'from student;
--select count(distinct cgpa) as 'Count Distinct cgpa' from student;
--select count(*) as 'Number Of Rows'from student;   -- This will select number of Rows value with 'NULL' value.

--select sum(Marks) as 'SUM' from student;
--select max(Marks) as 'MAX' from student;
--select min(cgpa) as 'MIN' from student;
--select avg(Marks) as 'AVG' from student;

                 -- 2. SCALER FUNCTION ->They work on column from each row and return one result per row.

                                  -- DATE --

--select MONTH(GETDATE()) as Month;
--select YEAR(GETDATE()) as YEAR;
--select DAY(GETDATE()) as DAY;
        --Returns current Date & Time
--select GETDATE() as 'DATE & TIME';
        -- Returns last day of current month
--SELECT EOMONTH(GETDATE()) AS LastDayOfMonth;
        -- Number of months between two dates
--SELECT DATEDIFF(MONTH, '1989-01-23', GETDATE()) AS MonthsBetween;
  

                             -- NUMERIC FUNCTION --

--select ABS(-6),ABS(-100) as 'Absolute value'; --This will take the 'ABSOLUTE' value.
--select CEILING (5.7),CEILING(-4.2) as 'Ceiling Value';  -- This will take the 'CEILING' value.
--select FLOOR(-5.7),Floor(5.7) as 'Floor Value'; -- This will return the largest integet less than or equal to the given value.
--select EXP(5) as 'Exponent'; --This returns the exponent e to the power n.
--select LOG(2,10); --logbn.
--select 15%4 as 'MOD'; --MODULUS
--select POWER(2,3);
--select SQRT(25);
--select ROUND(12.45,1); -- Round upto 1 decimal place.  
--select SIGN (-15.54);  -- Thos will give the sign for -ve value gives '-1' and for positive value gives '+1'.


                            -- CHARACTER FUNNCTION ----

SELECT CHAR(80);  -- THis will give the ASCII Character of value.
select LOWER('SOUMYADIP') as 'Lower';
SELECT UPPER('soumyadip') as 'Upper';






