const express = require('express');
const app = express();
const session = require('express-session');
const connection= require('./connection');
const port = 3000;
const path = require('path');

app.use(express.json());
app.use(express.static('public'));
app.use(session({
  secret: 'abc',
  resave: false,
  saveUninitialized: false,
      cookie: {
      maxAge: 1000 * 60 * 30 // session berlaku 30 menit
    }
}))


app.get('/', (req, res) => {
  if(req.session.user) {
    console.log(req.sessionID)
    res.sendFile(path.join(__dirname, 'public', 'dashboard.html'));
  } else {
    res.sendFile(path.join(__dirname, 'public', 'login.html'));
   }
});

function isLoggedIn(req, res, next) {
  if(!req.session.user) {
    return res.redirect('/');
  }
  next();
}

app.get('/dashboard', isLoggedIn ,(req, res) => {
  if(req.session.user) {
    res.sendFile(path.join(__dirname, 'public', 'dashboard.html'));
  } else {
    res.sendFile(path.join(__dirname, 'public', 'login.html'));
  }
});

app.get('/api/me', (req, res) => {
  if (req.session.user) {
    res.json({
      name: req.session.user.name || null, // tambahkan nama jika ada
      username: req.session.user.username
    });
  } else {
    res.status(401).json({ message: 'Unauthorized' });
  }
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
      req.session.user = {
        username: username
      }
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


app.get('/logout', (req, res) => {
  req.session.destroy(err => {
    if(err) res.status(500).send('Logout gagal!');
  })
  res.redirect('/');
});

app.listen(port, () => {
  console.log('Listening on port: ', port);
});