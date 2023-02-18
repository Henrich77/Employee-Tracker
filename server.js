const inquirer = require("inquirer");
const express = require('express')
const mysql = require('mysql2');
const PORT = process.env.PORT || 3001;
const app = express();


app.use(express.urlencoded({ extended: false }));
app.use(express.json());


const db = mysql.createConnection(
    {
      host: '127.0.0.1',
      // MySQL username,
      user: 'root',
    // Add MySQL password
      password: 'rootroot',
      database: 'employee_tracker'
    },
    console.log(`Connected to the employee_tracker database.`)
  );
  


function init() {

  const style = "font-weight: bold; font-size: 50px;color: red; text-shadow: 3px 3px 0 rgb(217,31,38) , 6px 6px 0 rgb(226,91,14) , 9px 9px 0 rgb(245,221,8) , 12px 12px 0 rgb(5,148,68) , 15px 15px 0 rgb(2,135,206) , 18px 18px 0 rgb(4,77,145) , 21px 21px 0 rgb(42,21,113); margin-bottom: 12px; padding: 5%"

  console.log(" %c Welcome to the Employee Tracker", style)
    inquirer.prompt([
        {
            type: 'list',
            name: 'choices',
            message: 'What do you want to do?',
            choices: ['View all departments', 'View all roles', 'View all employees','Add a department',' Add a role','add an employee','update an employee role','Exit']
        }
    ])
    .then((answers) => {
      switch (answers.choices) {
          case 'View all departments':
              department()
              break;
          case 'View all roles':
              role()
              break;
              case 'View all employees': 
              employee()
                  break;


          default:
              console.log(" hey pick an option !!!!!")
              break;
      }
  })

    
    
}


function department () {
  db.query('SELECT name, id FROM department ', function (err, results) {
    console.table(results);

    if (err) throw err
  });
  
}


function role()  {
  db.query('SELECT title, salary, id, department_id FROM role ', function (err, results) {
    console.table(results);

    if (err) throw err
  });

}


function employee() {

  db.query('SELECT * FROM employee ', function (err, results) {
    console.table(results);

    if (err) throw err
  });


}

init();
