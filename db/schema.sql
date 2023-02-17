DROP DATABASE IF EXISTS employee_tracker;
-- Creates the "inventory_db" database --
CREATE DATABASE employee_tracker;

-- Makes it so all of the following code will affect inventory_db --
 CREATE TABLE department(

  id: INT PRIMARY KEY,

  name: VARCHAR(30),
 )
 CREATE TABLE role(

    id: INT PRIMARY KEY,

    title: VARCHAR(30) ,

    salary: DECIMAL,

    department_id: INT to hold reference to department role belongs to
 )

CREATE TABLE employee(

    id: INT PRIMARY KEY,

    first_name: VARCHAR(30) to hold employee first name,

    last_name: VARCHAR(30) to hold employee last name,

    role_id: INT to hold reference to employee role,

    manager_id: INT to hold reference to another employee that is the manager of the current employee (`null` if the employee has no manager)
    )

