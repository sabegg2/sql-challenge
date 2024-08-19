-- DATA ENGINEERING

-- My process:
-- (1) First I created a database employeeSQL_db in pgAdmin
-- (2) Then I opened the Query Tool and wrote and executed this code 
--    to create the tables, data types, keys, and relationships
-- (3) Then I imported the data to each table by right-clickng each table 
--    and using Import/Export Data option
-- (4) Finally I ran the Data Analysis queries (in Data_Analysis.sql file)

-- Drop Tables if Existing
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS titles;

-- The following code is developed off of an export from QuickDBD after creating 
--   DB schema diagram: https://www.quickdatabasediagrams.com/.
-- Variable types modified to VARCHAR(#) instead of strings.
-- PRIMARY KEYs identified explicitly rather as CONSTRAINTs.
-- Note that PRIMARY KEYs are automatically set to NOTNULL by default.
-- PRIMARY KEYs identified CREATE TABLE rather than via ALTER TABLE.

CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    emp_no int PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date date, -- could be null since not used in analysis
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date date NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary money NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no CHAR(4) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no CHAR(4) NOT NULL,
    emp_no int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

--ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
--REFERENCES titles (title_id);

--ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no);

--ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no);

--ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no);

--ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
--REFERENCES departments (dept_no);

--ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
--REFERENCES departments (dept_no);