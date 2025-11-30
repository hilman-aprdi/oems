const express = require('express');
const app = express();
const port = 3000;
const session = require('express-session');

app.use(session({
    secret: 'mysecretkey123',
    resave: false,
    saveUninitializeds: false
}));

app.get('/', (req, res) => {
    res.send(`
        <h1>Demo Cookie & Session</h1>
        <p>Session ID: ${req.sessionID}</p>
    `)
});

app.get('/login', (req, res) => {
    req.session.user = {username: 'Hilman'};
    res.send('User berhasil login')
})

app.get('/dashboard', (req, res) => {
    if(req.session.user) {
        res.send(`Hallo, ${req.session.user.username}!👋, Selamat datang.`)
    } else {
        res.send('Anda Belum Login')
    }
})

app.get('/logout', (req, res) => {
    req.session.destroy(err => {
        if(err) res.send('Logout error!');
        res.send('Logout berhasil Cookie Session sudah invalid');
    })
})

app.listen(port, () => {
    console.log("Listen on port", port)
});
