const { default: inquirer } = require("inquirer");
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
      // TODO: Add MySQL password
      password: 'rootroot',
      database: 'employee_tracker'
    },
    console.log(`Connected to the employee_tracker database.`)
  );
  


function init() {
    inquirer
    .prompt([
        {
            type: 'list',
            name: 'choices',
            message: 'Do you want to add any other team members?',
            choices: ['View all departments', 'View all roles', 'view all employees','Add a department',' Add a role','add an employee','update an employee role','Exit'],
        }
    ]

    
    
)}


function de(params) {
  
}
