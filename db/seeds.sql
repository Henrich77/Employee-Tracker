USE employee_tracker;

INSERT INTO department (name)
VALUES 
( "Technology"),
( "Health Science"),
( "Business"),
("customer service")
( "Public Administration");

INSERT INTO role (department_id,salary,job_title)
VALUES 
(1, 95000,"developer" ),
(2,85000, "Nurse")
(3,110000, "CEO")
(4,72000, "Public Administration")
(5, 1, 90000, "City Manager");







INSERT INTO employee (first_name,last_name,role_id,manager_id)
VALUES
( "John","Doe", 1, NULL),
( "Michael","Thomas", 1, 1),
( "Levy","Wallace",5, 1),
( "Naruto","Uzimaki",3, 1),
("Peter","Griffin",4,1)
("Lisa","Simpson",2, 1);








    
       
       
