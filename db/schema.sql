DROP DATABASE IF EXISTS employee_tracker;
-- Creates the "inventory_db" database --
  CREATE DATABASE employee_tracker;

-- Makes it so all of the following code will affect inventory_db --
  CREATE TABLE department(

  id INT AUTO_INCREMENT PRIMARY KEY,

  name VARCHAR(30) NOT null,
 )
    CREATE TABLE role(

    id INT  AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(30) NOT NULL ,

    department_id INT,

    salary DECIMAL NOT NULL,

     FOREIGN KEY (department_id)
      REFERENCES department(id)
      ON DELETE SET NULL
 )

      CREATE TABLE employee(

      id INT AUTO_INCREMENT PRIMARY KEY,

      first_name VARCHAR(30),

      last_name VARCHAR(30),

      role_id INT,

      manager_id INT,
      FOREIGN KEY (role_id)
      REFERENCES role (id)
      ON DELETE CASCADE,
      
      FOREIGN KEY (manager_id)
      REFERENCES employee(id)
      ON DELETE SET NULL

    )

