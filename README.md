# Student Database Management System

## Project Overview
A PostgreSQL-based Student Database Management System designed to efficiently store, retrieve, and manage comprehensive student information including academic performance and personal details.

## Database Structure

### Database
- **Database Name:** student_database

### Table
- **student_table (renamed to student_info)** - Stores complete student records with academic and personal information

### Columns
- Student_id (Integer) - Primary Key
- Stu_name (Text) - Student Name
- Department (Text) - Academic Department
- email_id (Text) - Email Address
- Phone_no (Numeric) - Contact Number
- Address (Text) - Residential Address
- Date_of_birth (Date) - Date of Birth
- Gender (Text) - Gender
- Major (Text) - Major/Specialization
- GPA (Numeric) - Grade Point Average
- Grade (Text) - Letter Grade (A, B, C, etc.)

## Features

### 1. Database Setup
- Created dedicated student database
- Designed comprehensive student table with 11 attributes
- Implemented proper data types for each field

### 2. Data Entry
- Inserted 10 sample student records
- Comprehensive data covering all fields
- Diverse student profiles for testing queries

### 3. Student Information Retrieval
- Retrieve all students sorted by grade (descending order)
- Filter and display student records efficiently

### 4. Gender-Based Filtering
- Query to retrieve all male students
- Demographic analysis capabilities

### 5. GPA-Based Analysis
- Fetch students with GPA less than 5.0
- Academic performance tracking

### 6. Data Update Operations
- Update student email addresses
- Modify student grades
- Maintain data accuracy

### 7. Grade-Based Queries
- Retrieve students with specific grades
- Calculate age from date of birth
- Performance-based filtering

### 8. Grouping and Statistical Analysis
- Group students by Department and Gender
- Calculate average GPA for each combination
- Multi-dimensional data analysis

### 9. Table Management
- Rename table operations
- Database schema modifications

### 10. Top Performer Identification
- Query to find student with highest GPA
- Academic excellence tracking

## Technologies Used
- **Database:** PostgreSQL
- **Language:** SQL

## Key SQL Concepts Demonstrated
- Database creation and management
- Table creation with multiple data types
- INSERT operations for bulk data entry
- SELECT queries with filtering (WHERE clause)
- Sorting with ORDER BY (ASC/DESC)
- UPDATE statements for data modification
- GROUP BY with aggregate functions (AVG)
- Table renaming (ALTER TABLE)
- Subqueries for finding maximum values
- Age calculation using date functions

## Project Files
- `Task2-Student Database Management System+PostgreSQL.sql` - Complete SQL code with all tasks
- Screenshots folder containing output images for all queries

## How to Use
1. Create the database using the provided script
2. Execute table creation statements
3. Insert sample data into the table
4. Run individual queries to retrieve and analyze student information
5. Test update operations on specific records
6. Execute analytical queries for insights

## Learning Outcomes
- Understanding PostgreSQL database creation
- Working with various data types
- Implementing data retrieval with filters
- Performing data updates and modifications
- Using aggregate functions for analysis
- Grouping data for statistical insights
- Table management and renaming operations
- Writing complex queries with multiple conditions

## Author
[MANIRATHINAM]

## Date
December 2025
