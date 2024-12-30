const mysql = require("mysql2");

const pool = mysql.createPool({
    host: process.env.MYSQL_HOST || 'mysql',
    user: process.env.MYSQL_USER || 'user',
    password: process.env.MYSQL_PASSWORD || 'password',
    database: process.env.MYSQL_DATABASE || 'recettes',
    charset: 'utf8mb4'
});

class Recette {
    static async findAll() {
        return new Promise((resolve, reject) => {
            pool.query('SELECT * FROM recettes', (err, results) => {
                if (err) {
                    return reject(err);
                }
                resolve(results);
            });
        });
    }

    static async findByCategories(categories){
        console.log(categories);
        if (!categories || categories.length === 0) {
            return (await Recette.findAll())[0];
        }

        const conditions = categories
            .map(category => `FIND_IN_SET('${category}', categoriesRecette)`)
            .join(' AND ');

        const query = `SELECT * FROM recettes WHERE ${conditions}`;
        return new Promise((resolve, reject) => {
            pool.query(query, (err, results) => {
                if (err) {
                    return reject(err);
                }
                resolve(results);
            });
        });
    }

    static async findById(id) {
        return new Promise((resolve, reject) => {
            pool.query('SELECT * FROM recettes WHERE id = ?', [id], (err, results) => {
                if (err) {
                    return reject(err);
                }
                resolve(results[0]);
            });
        });
    }
}

module.exports = Recette;