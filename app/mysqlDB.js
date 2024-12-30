const mysql = require('mysql2/promise');

async function connectToDatabase() {
    const mysqlConnection = await mysql.createConnection({
        host: process.env.MYSQL_HOST || 'mysql',
        user: process.env.MYSQL_USER || 'user',
        password: process.env.MYSQL_PASSWORD || 'password',
        database: process.env.MYSQL_DATABASE || 'recettes',
        charset: 'utf8mb4'
    });
    console.log('Connexion à MySQL réussie');
    return mysqlConnection;
}

module.exports = connectToDatabase;