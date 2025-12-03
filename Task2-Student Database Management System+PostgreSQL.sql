-- ========================================
-- STUDENT DATABASE MANAGEMENT SYSTEM (PostgreSQL)
-- ========================================

-- ========================================
-- TASK 1: DATABASE SETUP
-- ========================================
-- Drop table if exists
DROP TABLE IF EXISTS student_table;
DROP TABLE IF EXISTS student_info;

-- Create student_table
CREATE TABLE student_table (
    Student_id INTEGER PRIMARY KEY,
    Stu_name TEXT NOT NULL,
    Department TEXT,
    email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC(3,2) CHECK (GPA >= 0 AND GPA <= 10),
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C', 'D', 'E', 'F'))
);

-- ========================================
-- TASK 2: DATA ENTRY
-- ========================================

-- Insert 10 sample records into student_table

INSERT INTO student_table (Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) VALUES
(1, 'Manirathinam', 'Computer Science', 'manirathinam@email.com', 9876543210, '123 Anna Nagar, Chennai', '2002-05-15', 'Male', 'Software Engineering', 8.5, 'A'),
(2, 'Edison', 'Electrical Engineering', 'edison@email.com', 9876543211, '456 MG Road, Bangalore', '2001-08-22', 'Male', 'Power Systems', 7.2, 'B'),
(3, 'Jayashree', 'Computer Science', 'jayashree@email.com', 9876543212, '789 Banjara Hills, Hyderabad', '2003-01-10', 'Female', 'Data Science', 9.1, 'A'),
(4, 'Dimpal', 'Mechanical Engineering', 'dimpal@email.com', 9876543213, '321 Andheri, Mumbai', '2002-11-30', 'Female', 'Robotics', 6.8, 'B'),
(5, 'Vidya', 'Information Technology', 'vidya@email.com', 9876543214, '654 Koregaon Park, Pune', '2001-07-18', 'Female', 'Cybersecurity', 8.9, 'A'),
(6, 'Aanchal', 'Civil Engineering', 'aanchal@email.com', 9876543215, '987 Sector 15, Noida', '2002-03-25', 'Female', 'Structural Engineering', 4.5, 'C'),
(7, 'Javeeth', 'Computer Science', 'javeeth@email.com', 9876543216, '234 T Nagar, Chennai', '2001-12-05', 'Male', 'Artificial Intelligence', 7.8, 'B'),
(8, 'Subhashini', 'Electronics Engineering', 'subhashini@email.com', 9876543217, '567 Whitefield, Bangalore', '2003-06-14', 'Female', 'VLSI Design', 6.5, 'C'),
(9, 'Vijay', 'Mechanical Engineering', 'vijay@email.com', 9876543218, '890 Adyar, Chennai', '2002-09-20', 'Male', 'Automobile Engineering', 5.2, 'C'),
(10, 'Siva', 'Information Technology', 'siva@email.com', 9876543219, '432 Jubilee Hills, Hyderabad', '2001-04-08', 'Male', 'Cloud Computing', 4.2, 'D');

select * from student_table;

-- ========================================
-- TASK 3: STUDENT INFORMATION RETRIEVAL
-- ========================================

-- Retrieve all students' information sorted by grade in descending order
SELECT * FROM student_table
ORDER BY Grade DESC;

-- ========================================
-- TASK 4: QUERY FOR MALE STUDENTS
-- ========================================

-- Retrieve information about all male students
SELECT * FROM student_table
WHERE Gender = 'Male';

-- ========================================
-- TASK 5: QUERY FOR STUDENTS WITH GPA LESS THAN 5.0
-- ========================================

-- Fetch details of students who have GPA less than 5.0
SELECT * FROM student_table
WHERE GPA < 5.0;
-- ========================================
-- TASK 6: UPDATE STUDENT EMAIL AND GRADE
-- ========================================

-- Update email and grade for a specific student (Example: Student_id = 2, Edison)
UPDATE student_table
SET email_id = 'edison.new@email.com', Grade = 'A'
WHERE Student_id = 2;
SELECT * FROM student_table;

-- TASK 7: QUERY FOR STUDENTS WITH GRADE "B"
-- ========================================

-- Retrieve names and ages of all students who have grade "B"
SELECT 
    Stu_name,
    DATE_PART('year', AGE(CURRENT_DATE, Date_of_birth)) AS Age
FROM student_table
WHERE Grade = 'B';
-- ========================================
-- TASK 8: GROUPING AND CALCULATION
-- ========================================

-- Group by Department and Gender, calculate average GPA for each combination
SELECT 
    Department,
    Gender,
    AVG(GPA) AS Average_GPA
FROM student_table
GROUP BY Department, Gender
ORDER BY Department, Gender;

-- ========================================
-- TASK 9: TABLE RENAMING
-- ========================================

-- Rename student_table to student_info
ALTER TABLE student_table RENAME TO student_info;

-- ========================================
-- TASK 10: RETRIEVE STUDENT WITH HIGHEST GPA
-- ========================================

-- Retrieve the name of the student with the highest GPA
SELECT Stu_name
FROM student_info
WHERE GPA = (SELECT MAX(GPA) FROM student_info);
