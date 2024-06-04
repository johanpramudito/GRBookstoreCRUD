const Pool = require('pg').Pool
require('dotenv').config()

const pool = new Pool({
    user: 'namauser', // Ganti dengan nama user yang digunakan
    host: 'namahost', // Ganti dengan nama host yang digunakan
    database: 'namadatabase', // Ganti dengan nama database yang digunakan
    password: 'password', // Ganti dengan password yang digunakan
    port: 5432, // Ganti dengan port yang digunakan
})

module.exports = pool;

pool.on('connect', pool => {
    console.log('connected to the Database');
});