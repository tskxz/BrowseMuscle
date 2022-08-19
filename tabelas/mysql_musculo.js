var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "browsemuscle"
});

con.connect(function(err) {
 	if (err) throw err;
  	console.log("Connected!");
  	var sql = "INSERT INTO musculo (nome_musculo) VALUES ?";
  	var values = [
		['quadriceps'],
	 	['hamstrings'],
	 	['costas'],
	 	['lats'],
	 	['ombros'],
	 	['peito'],
	 	['gemeos'],
	 	['antebraco'],
	 	['biceps'],
	 	['triceps'],
	 	['abdominais'],
	 	['traps']
 	]
  	con.query(sql, [values], function (err, result){
  		if (err) throw err;
  		console.log("Number of records inserted: " + result.affectedRows);
  	})
});