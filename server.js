const express = require('express');
const connection= require('./connection');
const app = express();
const port = 3000;
const path = require('path');

app.use(express.json());
app.use(express.static('public'));


app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'login.html'));
});

app.get('/dashboard', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'dashboard.html'));
});

app.get('/users', (req, res) => {
    const sql = `SELECT * FROM users WHERE id ='${req.query.id}' `;
    connection.query(sql, (err, results, fields) => {
      res.json(results);
    })
})


app.post('/user', (req, res) => {
  const sql = `SELECT * FROM users WHERE username = '${req.body.username}'`;
  connection.query(sql, (err, results, fields) => {
    res.json({
      success: true,
      users: results,
      message: 'Get all user data',
      totalUser: results.length
    });
    console.log(results);
  });
}) ;

app.get('/x', (req, res) => {
  res.send("haha");
});

app.post('/auth/login', async (req, res) => {
  const {username, password} = req.body;
  const sql = `SELECT * FROM users WHERE username='${username}'`;
  connection.query(sql, (err, results, fields) => {
    if(!username || !password) {
    return res.status(400).json({
      success: false, 
      message: 'Username & Password harus diisi!'
    });
  }
    if(results.length === 1) {
      res.json({
        success: true, 
        message: 'Login Successfully!'
      });
    } else {
      res.json({
        success: false, 
        message: 'Username atau Passwors salah!'
      });
    }
  });
});

app.listen(port, () => {
  console.log('Listening on port: ', port);
});