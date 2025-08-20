             
             ----   Here I Write all the "Grouping" queries ----------                     @Soumyadip Malash

-- Find sum of Maximum count by term by course. (GROUP BY two columns) ?
select termId,courseId,SUM(MaxCount) as TotalCount from crssection group by termID,courseID;

--  Display a student’s full name along with his/her major’s description ?
select StudentID,Last,First,majordesc from stud,major where Stud.MajorID=major.majorID;

-- Find sum of Maximum count by term by course having 'WN03' ?
select termId,courseId,SUM(MaxCount) as TotalCount from crssection group by termID,courseID  having termID='WN03';
     -- NOTE:- The 'HAVING' clause is used with those column which is used either an 'aggregate function' or 
     -- the 'GROUP BY' clause otherwise it gives error. 
    
   