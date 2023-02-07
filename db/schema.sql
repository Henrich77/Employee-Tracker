DROP DATABASE IF EXISTS employee_tracker;
-- Creates the "inventory_db" database --
CREATE DATABASE employee_tracker;

-- Makes it so all of the following code will affect inventory_db --
USE employee_tracker;

-- Creates the table "produce" within inventory_db --
CREATE TABLE department (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(100) NOT NULL
);


CREATE TABLE roles (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  -- the job title, role id, the department that role belongs to, and the salary for that role
  id INT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  job_title VARCHAR(100) NOT NULL,

  salary INT NOT NULL,

  department VARCHAR(100) NOT NULL,
   

);


CREATE TABLE employees (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  -- including employee ids, first names, last names, job titles, departments, salaries, and managers 
  id INT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  first_name VARCHAR(100) NOT NULL,

  last_name VARCHAR(100) NOT NULL,

  department VARCHAR(100) NOT NULL,

  salaries VARCHAR(100) NOT NULL,

  managers VARCHAR(100) NOT NULL,

);

