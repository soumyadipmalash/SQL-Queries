         
         
                         --- JOIN ------                                             @Soumyadip Malash

-- Get names of students, who received final grade ‘F’ in Winter 2003 ?
SELECT s.last, s.first, c.courseID, c.section, r.final
FROM stud s
INNER JOIN registration r 
    ON s.StudentID = r.studentID
INNER JOIN crssection c
    ON r.csid = c.csid
WHERE r.final = 'F';

-- Display student names, their faculty advisors names, and faculty’s office location ?
SELECT last, first, building,roomno
FROM stud s
JOIN faculty f 
    ON s.facultyid = f.facultyid
JOIN location l 
    ON f.roomid = l.roomid; -- explicit join condition

-- Display course titles along with their prerequisite names. Display courses without prerequisite also.?
SELECT c1.title, 
       c2.title
FROM course c1
LEFT JOIN course c2
    ON c1.prereq = c2.courseid;

--Get Spring 2003 course sections with the faculty member assigned to teach the class. 
--Include course sections without any faculty assigned to them.

SELECT courseid, section,name
FROM crssection cs
LEFT JOIN faculty f
    ON cs.facultyid = f.facultyid
WHERE cs.termid = 'SP03';

-- (Self Join) Write an SQL query to display each course along with the title of its prerequisite course, 
-- If a course has no prerequisite, still display the course with a NULL prerequisite.

SELECT c1.title AS Course,
       c2.title AS Prerequisite
FROM course c1
LEFT JOIN course c2
    ON c1.prereq = c2.courseid;


-- Write an SQL query to list all unique names of students and faculty together ?
SELECT first FROM stud 
UNION 
SELECT name FROM faculty;

-- Write a query to find the student first names that are not present in the faculty names ?
SELECT first FROM stud
EXCEPT                       -- In SQL We use 'Except' in spite of 'Minus'.
SELECT name FROM faculty;

-- Write a query to find names that are present in both the student and faculty tables.?
SELECT StudentID FROM stud
INTERSECT
SELECT StudentID FROM registration;
