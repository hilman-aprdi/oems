const mysql = require('mysql2'); 

const dbConfig = {
  host: 'localhost', 
  user: 'root',
  password: '',
  database: 'oems_db'
};

const connection = mysql.createConnection(dbConfig);

connection.connect( err => {
  if(err) throw err;
  console.log('MySQL Successfully Connected');
})

module.exports = connection;