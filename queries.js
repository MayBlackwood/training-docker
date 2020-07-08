const Pool = require("pg").Pool;
const pool = new Pool({
  user: "postgres",
  host: "192.168.99.100",
  database: "testdb",
  password: "postgres",
  port: 5555,
});

const getUsers = (req, res) => {
  pool.query("SELECT * FROM users ORDER BY id ASC", (error, results) => {
    if (error) {
      throw error;
    }

    res.status(200).json(results.rows);
  });
};

module.exports = {
  getUsers,
};
