        --- ADDING ALL THE 'FOREIGN KEYS' TO THE TABLE TO CONNNECT THE TABLES -----    @Soumyadip Malash
        
-- Student table foreign keys
--ALTER TABLE stud 
--ADD CONSTRAINT FK_student_startterm FOREIGN KEY (StartTerm) REFERENCES term(termID);

--ALTER TABLE stud 
--ADD CONSTRAINT FK_student_faculty FOREIGN KEY (FacultyID) REFERENCES faculty(FacultyID);

--ALTER TABLE stud 
--ADD CONSTRAINT FK_student_major FOREIGN KEY (MajorID) REFERENCES major(MajorID);


---- Faculty table foreign keys
--ALTER TABLE faculty 
--ADD CONSTRAINT FK_faculty_room FOREIGN KEY (RoomID) REFERENCES location(RoomID);

--ALTER TABLE faculty 
--ADD CONSTRAINT FK_faculty_dept FOREIGN KEY (DeptID) REFERENCES department(DeptID);


---- Course section foreign keys
--ALTER TABLE crssection 
--ADD CONSTRAINT FK_crssection_course FOREIGN KEY (CourseID) REFERENCES course(CourseID);

--ALTER TABLE crssection 
--ADD CONSTRAINT FK_crssection_term FOREIGN KEY (TermID) REFERENCES term(TermID);

--ALTER TABLE crssection 
--ADD CONSTRAINT FK_crssection_faculty FOREIGN KEY (FacultyID) REFERENCES faculty(FacultyID);

--ALTER TABLE crssection 
--ADD CONSTRAINT FK_crssection_room FOREIGN KEY (RoomID) REFERENCES location(RoomID);


---- Course prerequisites
--ALTER TABLE course 
--ADD CONSTRAINT FK_course_prereq FOREIGN KEY (Prereq) REFERENCES course(CourseID);


---- Registration table foreign keys
--ALTER TABLE registration 
--ADD CONSTRAINT FK_registration_student FOREIGN KEY (StudentID) REFERENCES stud(StudentID);

--ALTER TABLE registration 
--ADD CONSTRAINT FK_registration_cs FOREIGN KEY (csID) REFERENCES crssection(csID);

---- Location table foreign keys
--ALTER TABLE location 
--ADD CONSTRAINT FK_location_roomtype FOREIGN KEY (RoomType) REFERENCES room(RoomType);


---- Department table foreign keys
--ALTER TABLE department 
--ADD CONSTRAINT FK_department_faculty FOREIGN KEY (FacultyID) REFERENCES faculty(FacultyID);
