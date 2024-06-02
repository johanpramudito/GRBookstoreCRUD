const Pool = require('pg').Pool

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'GRBookstoreDB',
    password: 'johan123',
    port: 5432,
})

module.exports = pool;

pool.on('connect', pool => {
    console.log('connected to the Database');
});