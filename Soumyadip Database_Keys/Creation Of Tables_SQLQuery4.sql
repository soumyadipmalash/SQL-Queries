
                       -- CREATION OF ALL TABLES IN MY DATABASE ---
/*
CREATE TABLE stud (
    StudentID CHAR(5) constraint c1 PRIMARY KEY,
    Last VARCHAR(15) constraint c2 NOT NULL,
    First VARCHAR(15) constraint c3 NOT NULL,
    Street VARCHAR(25),
    City VARCHAR(15),
    State CHAR(2) DEFAULT 'NJ',
    Zip VARCHAR(5),
    StartTerm CHAR(4),
    Birthday DATE,
    FacultyID NUMERIC(3,0),
    MajorID NUMERIC(3,0),
    Phone CHAR(10)
);


CREATE TABLE faculty (
    facultyID NUMERIC(3,0) constraint c4 PRIMARY KEY,
    name VARCHAR(15) constraint c5 NOT NULL,
    roomID NUMERIC(2,0),
    phone CHAR(3) UNIQUE,
    deptID NUMERIC(1,0)
);


CREATE TABLE crssection (
    csID NUMERIC(4,0) constraint c6 PRIMARY KEY,
    courseID VARCHAR(6) constraint c7 NOT NULL,
    section CHAR(2) constraint c8 NOT NULL,
    termID CHAR(4) constraint c9 NOT NULL,
    facultyID NUMERIC(3,0),
    day VARCHAR(2),
    starttime VARCHAR(5),
    endtime VARCHAR(5),
    roomID NUMERIC(2,0),
    maxcount NUMERIC(2,0) CHECK (maxcount > 0)
);


CREATE TABLE course (
    courseID VARCHAR(6) constraint c10 PRIMARY KEY,
    title VARCHAR(20) UNIQUE,
    credits NUMERIC(1,0) CHECK (credits >= 0 AND credits <= 4),
    prereq VARCHAR(6)
);

CREATE TABLE registration (
    studentID CHAR(5),
    csID NUMERIC(4,0),
    midterm CHAR(1) CHECK (midterm IN ('A', 'B', 'C', 'D', 'F', 'W')),
    final CHAR(1) CHECK (final IN ('A', 'B', 'C', 'D', 'I', 'F', 'W')),
    regstatus CHAR(1) CHECK (regstatus IN ('X', 'R', 'W')),
    constraint c11 primary key (studentID,csID)
);

CREATE TABLE room (
    roomtype CHAR(1) CONSTRAINT c12 PRIMARY KEY,
    roomdesc VARCHAR(9)
);

CREATE TABLE location (
    roomID NUMERIC(2,0) CONSTRAINT c13 PRIMARY KEY,
    building VARCHAR(7) CONSTRAINT c14 NOT NULL,
    roomno CHAR(3) CONSTRAINT c15 NOT NULL UNIQUE,
    capacity NUMERIC(2,0) CHECK (capacity > 0),
    roomtype CHAR(1)
);

CREATE TABLE term (
    termID CHAR(4) CONSTRAINT c16 PRIMARY KEY,
    termdesc VARCHAR(11),
    startdate DATE,
    enddate DATE
);

CREATE TABLE department (
    deptID NUMERIC(1,0) CONSTRAINT c17 PRIMARY KEY,
    deptname VARCHAR(20),
    facultyID NUMERIC(3,0)
);

CREATE TABLE major (
    majorID NUMERIC(3,0) CONSTRAINT c18 PRIMARY KEY,
    majordesc VARCHAR(25)
);
*/

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';