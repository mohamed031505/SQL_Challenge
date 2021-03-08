-- Employees Table
CREATE TABLE employees(
emp_no VARCHAR PRIMARY KEY,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE
);
-- Salaries Table
CREATE TABLE salaries(
emp_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT
);


-- Departments Table
CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

-- Department Empolyee Table

CREATE TABLE dept_emp(
emp_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Department Manager Table

CREATE TABLE dept_manager(
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

-- Titles Table

CREATE TABLE titles(
title_id VARCHAR,
title VARCHAR
);