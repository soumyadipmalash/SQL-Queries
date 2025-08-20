                      ---- Inserting Values In the Tables -------             @Soumyadip Malash


--insert into course values('EN100', 'Basic English', '0', NULL);
--insert into course values('LA123', 'English Literature', '3', 'EN100');
--insert into course values('CIS253', 'Database Systems', '3', NULL);
--insert into course values('CIS265', 'Systems Analysis', '3', 'CIS253');
--insert into course values('MA150', 'College Algebra', '3', NULL);
--insert into course values('AC101', 'Accounting', '3', NULL);
--select * from course;

--insert into room values('L', 'Lab');
--insert into room values('C', 'Classroom');
--insert into room values('O', 'Office');
--select * from room;

--insert into term values('SP02', 'Spring 2002', '28-APR-02', '16-AUG-02');
--insert into term values('FL02', 'Fall 2002', '08-SEP-02', '20-DEC-02');
--insert into term values('WN03', 'Winter 2003', '05-JAN-03', '18-APR-03');
--insert into term values('SP03', 'Spring 2003', '27-APR-03', '15-AUG-03');
--insert into term values('FL03', 'Fall 2003', '07-SEP-03', '19-DEC-03');
--select * from term;

--insert into major values('100', 'AAS-Accounting');
--insert into major values('200', 'AAS-Computer Science');
--insert into major values('300', 'AAS-Telecommunications');
--insert into major values('400', 'BS-Accounting');
--insert into major values('500', 'BS-Computer Science');
--insert into major values('600', 'BS-Telecommunications');
--select * from major;

--insert into location values('11', 'Gandhi', '101', '2', 'O');
--insert into location values('12', 'Gandhi', '103', '2', 'O');
--insert into location values('13', 'Kennedy', '202', '35', 'L');
--insert into location values('14', 'Kennedy', '204', '50', 'L');
--insert into location values('15', 'Nehru', '301', '50', 'C');
--insert into location values('16', 'Nehru', '309', '45', 'C');
--insert into location values('17', 'Gandhi', '105', '2', 'O');
--insert into location values('18', 'Kennedy', '206', '40', 'L');
--insert into location values('19', 'Kennedy', '210', '30', 'L');
--insert into location values('20', 'Gandhi', '107', '2', 'O');
--insert into location values('21', 'Gandhi', '109', '2', 'O');
--select * from location;


--alter table faculty drop constraint FK_faculty_dept;

--insert into faculty values('111', 'Jones', '11', '525', '1');
--insert into faculty values('222', 'Williams', '20', '533', '2');
--insert into faculty values('123', 'Mobley', '11', '529', '1');
--insert into faculty values('235', 'Vajpayee', '12', '577', '2');
--insert into faculty values('345', 'Sen', '12', '579', '3');
--insert into faculty values('444', 'Rivera', '21', '544', '4');
--insert into faculty values('555', 'Chang', '17', '587', '5');
--insert into faculty values('333', 'Collins', '17', '599', '3');
--select * from faculty;

--insert into department values('1', 'Computer Science', '111');
--insert into department values('2', 'Telecommunications', '222');
--insert into department values('3', 'Accounting', '333');
--insert into department values('4', 'Math and Science', '444');
--insert into department values('5', 'Liberal Arts', '555');
--select * from department;

--ALTER TABLE faculty 
--ADD CONSTRAINT FK_faculty_dept FOREIGN KEY (DeptID) REFERENCES department(DeptID);



--insert into crssection values('1101','CIS265','01','WN03','111','MW','09:00','10:30','13','30');
--insert into crssection values('1102','CIS253','01','WN03','123','TR','09:00','10:30','18','40');
--insert into crssection values('1103','MA150','02','WN03','444','F','09:00','12:00','15','25');
--insert into crssection values('1104','AC101','10','WN03','345','MW','10:30','12:00','16','35');
--insert into crssection values('1205','CIS265','01','SP03',NULL,'MW','09:00','10:30','14','35');
--insert into crssection values('1206','CIS265','02','SP03','111','TR','09:00','10:30','18','30');
--insert into crssection values('1207','LA123','05','SP03',NULL,'MW','09:00','10:30','15','30');
--insert into crssection values('1208','CIS253','21','SP03','123','TR','09:00','10:30','14','40');
--insert into crssection values('1209','CIS253','11','SP03','111','MW','09:00','10:30','18','40');
--insert into crssection values('1210','CIS253','31','SP03','123','F','TBA','TBA','19','2');
select * from crssection;


--insert into stud values('00100', 'Diaz', 'Jose', '1 Ford Avenue #7', 'Hill', 'NJ', '08863', 'WN03', '12-FEB-1983', '123', '100', '9735551111');
--insert into stud values('00101', 'Tyler', 'Mickey', '12 Morris Avenue', 'Bronx', 'NY', '10468', 'SP03', '18-MAR-1984', '555', '500', '7185552222');
--insert into stud values('00102', 'Patel', 'Rajesh', '25 River Road #3', 'Edison', 'NJ', '08837', 'WN03', '12-DEC-1985', '111', '400', '7325553333');
--insert into stud values('00103', 'Rickles', 'Deborah', '100 Main Street', 'Iselin', 'NJ', '08838', 'FL02', '20-OCT-1979', '555', '500', '7325554444');
--insert into stud values('00104', 'Lee', 'Brian', '2845 First Lane', 'Hope', 'NY', '11373', 'WN03', '28-NOV-1985', '345', '600', '2125555555');
--insert into stud values('00105', 'Khan', 'Amir', '213 Broad way', 'Clifton', 'NJ', '07222', 'WN03', '07-JUL-1984', '222', '200', '2015556666');
--select * from stud;


--ALTER TABLE registration 
--ADD CONSTRAINT FK_registration_student FOREIGN KEY (StudentID) REFERENCES stud(StudentID);
--ALTER TABLE registration 
--ADD CONSTRAINT FK_registration_cs FOREIGN KEY (csID) REFERENCES crssection(csID);

--insert into registration values('00100',1103,'C','F','R');
--insert into registration values('00100',1102,'B','B','R');
--insert into registration values('00100',1104,'B','A','R');
--insert into registration values('00102',1102,'F','D','R');
--insert into registration values('00102',1103,'A','A','R');
--insert into registration values('00103',1101,'F','W','W');
--insert into registration values('00103',1104,'D','D','R');
--insert into registration values('00100',1207,NULL,NULL,'X');
--insert into registration values('00103',1206,NULL,NULL,'W');
--insert into registration values('00104',1206,NULL,NULL,'X');
--insert into registration values('00104',1207,NULL,NULL,'R');
--insert into registration values('00104',1210,NULL,NULL,'R');
--insert into registration values('00105',1208,NULL,NULL,'R');
--insert into registration values('00105',1209,NULL,NULL,'X');
--insert into registration values('00101',1205,NULL,NULL,'X');
--insert into registration values('00102',1210,NULL,NULL,'R');
--insert into registration values('00102',1207,NULL,NULL,'R');
--insert into registration values('00102',1206,NULL,NULL,'X');

--select * from registration;









