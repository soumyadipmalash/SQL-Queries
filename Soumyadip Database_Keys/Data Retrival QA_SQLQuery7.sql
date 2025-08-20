

-- Display unique building names from LOCATION table ?
select distinct building from location;

-- Display all course sections offered in Winter 2003 ?
select courseid, section,termid from crssection where termID ='WN03';

-- Display names of faculty members who work in department 1 or 2.  Use IN operator in your query ?
select facultyid,name,roomID,phone,deptid from Faculty where deptid in (1,2);


-- Find all New York and New Jersey students ?
select StudentID, last, first, state  from stud;


-- For each course ID, display the maximum count in descending order ?
select courseid, section,maxcount from crssection order by maxcount desc;

-- Find courses with no required prerequisite ?
select courseid,title,credits from course where prereq is null;


-- Display faculty names in descending order by their department, but in alphabetical order by their 
--name within each department ?
select facultyid,name,roomid, phone, deptID from faculty order by deptid desc,name;


-- Find students who started in year 2003.  Use start term column and wild card ?
select studentid,last,first,startterm from stud where startterm in ('WN03','SP03');

-- Count the total number of rooms in LOCATION ?
select count (*) from location ;

-- Find the average, highest, and lowest age for students ?
SELECT 
    AVG(YEAR(GETDATE()) - YEAR(BirthDay)) AS AvgAge,
    MAX(YEAR(GETDATE()) - YEAR(BirthDay)) AS MaxAge,
    MIN(YEAR(GETDATE()) - YEAR(BirthDay)) AS MinAge
FROM STUD;

-- Display courses and prerequisites.  If there is no prerequisite, display ‘none’ else display ‘one’ ?
SELECT CourseID, COALESCE(CASE WHEN Prereq IS NOT NULL THEN 'one' ELSE 'none' END,'None') 
AS Prerequisite from course;


-- Find students who are born in the month of July ?
Select first,last, birthday from stud WHERE MONTH (BirthDay)=7;

