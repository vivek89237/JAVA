



-- CREATE TABLE Instructors (
--   instructor_id INT PRIMARY KEY,
--   instructor_name VARCHAR(100),
--   salary DECIMAL(10, 2)
  
-- );

-- CREATE TABLE Courses (
--   course_id INT PRIMARY KEY,
--   course_name VARCHAR(100),
--   instructor_id INT,
--   department VARCHAR(50),
--   semester VARCHAR(20),
--   building VARCHAR(50),
--   room_no VARCHAR(10),
--   total_credits INT,
--   FOREIGN KEY (instructor_id) references Instructors(instructor_id)
-- );





-- CREATE TABLE Students (
--   student_id INT PRIMARY KEY,
--   student_name VARCHAR(100)
-- );


-- CREATE TABLE Enrollments (
--   enrollment_id INT PRIMARY KEY,
--   course_id INT,
--   student_id INT,
--   semester VARCHAR(20),
--   grade CHAR(1),
--   FOREIGN KEY (course_id) REFERENCES Courses(course_id),
--   FOREIGN KEY (student_id) REFERENCES Students(student_id)
-- );

-- INSERT INTO Instructors (instructor_id, instructor_name, salary)
-- VALUES
--   (101, 'Katz', 50000),
--   (102, 'Srinivasan', 55000),
--   (103, 'Thang', 45000),
--   (104, 'Mozart', 48000),
--   (105, 'Einstein', 52000);


-- INSERT INTO Courses (course_id, course_name, instructor_id, department, semester, building, room_no, total_credits)
-- VALUES
--   (1, 'DBMS', 101, 'Compsc', 'Fall 2009', 'TAYLOR', '101', 3),
--   (2, 'Thermodynamics', 102, 'Physics', 'Fall 2009', 'PACKARD', '201', 4),
--   (3, 'OOPs', 103, 'Compsc', 'Spring 2010', 'TAYLOR', '102', 4),
--   (4, 'anatomy', 104, 'Biology', 'Spring 2010', 'B1', '301', 3);



-- INSERT INTO Students (student_id, student_name)
-- VALUES
--   (1001, 'anant'),
--   (1002, 'aashna'),
--   (1003, 'vivek'),
--   (1004, 'atul'),
--   (1005, 'yash');

-- INSERT INTO Enrollments (enrollment_id, course_id, student_id, semester, grade)
-- VALUES
--   (2101, 1, 1001, 'Fall 2009', 'A'),
--   (2102, 1, 1002, 'Fall 2009', 'B'),
--   (2103, 2, 1001, 'Fall 2009', 'A'),
--   (2104, 2, 1002, 'Fall 2009', 'C'),
--   (2105, 3, 1003, 'Spring 2010', 'B'),
--   (2106, 3, 1004, 'Spring 2010', 'A'),
--   (2107, 4, 1001, 'Spring 2010', 'B');

  
  
  --1.	List the total number of courses offered in each department
--   select department,count(course_id) as total_no_courses from courses group by department
  
--   2.	Retrieve the courses with more than 30 enrollments
-- select course_name
-- from courses c,enrollments e
-- where c.course_id=e.course_id  --join condition for cross join(must needed)
-- group by course_name
-- having count(e.course_id)>30;

--3.	Find courses that have at least one student with a 'B' grade


-- select c.course_name 
-- from courses as c,enrollments as e
-- where c.course_id= e.course_id and e.grade='B';

-- 4.	Find the instructors who have taught courses in multiple departments	

-- select i.instructor_name
-- from instructors as i,courses as c
-- where i.instructor_id=c.instructor_id
-- group by i.instructor_name
-- having count(c.department)>1

-- 5.	Display the average salary of instructors in each department, for departments with at least 2 instructors

-- select avg(i.salary)
-- from instructors as i,courses as c
--  where i.instructor_id=c.instructor_id       __dought - What if we need to print all in group by quedstion?
--  group by i.salary
--  having count(c.department)>2

-- 6.	Find the number of students enrolled in each semester

-- select e.semester, count(e.semester) no_student
-- from students as s, enrollments as e
-- where s.student_id=e.student_id
-- group by e.semester
--7.	Display the departments where the average course credits exceed 3


-- select department
-- from courses
-- group by department
-- having avg(total_credits)>3;

-- 8.	Calculate the total credits enrolled by each student in each semester

-- SELECT e.student_id, c.semester, SUM(c.total_credits) AS total_enrolled_credits
-- FROM Enrollments e
-- JOIN Courses c ON e.course_id = c.course_id
-- GROUP BY e.student_id, c.semester;                            -HOW to join three tables


--9.	Display the departments with more than one course having the same instructor



-- select c.course_name,i.instructor_name
--  from instructors as i,courses as c
-- where i.instructor_id=c.instructor_id
-- group by i.instructor_name,c.course_name
-- having count(course_name)>1

  
--   10.	Display the students who have taken courses in all offered semesters

-- SELECT s.student_id, s.student_name
-- FROM Students s
-- WHERE NOT EXISTS (
--     SELECT DISTINCT semester
--     FROM Courses
--     EXCEPT
--     SELECT DISTINCT e.semester
--     FROM Enrollments e
--     WHERE e.student_id = s.student_id
-- );

-- 11.	find the name of the department with the maximum enrolled students and offering the highest salary to its employees


















  
  
  
  
  
  


