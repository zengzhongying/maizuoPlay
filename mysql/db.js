var db    = {};
var mysql = require('mysql');
var pool  = mysql.createPool({
  connectionLimit : 10,
  host            : 'localhost',
  user            : 'root',
  password        : '86qweqweqwe',
  database        : 'zzy'
});
 
db.query = function(sql, callback){
 
	if (!sql) {
		callback();
		return;
	}
	pool.query(sql, function(err, rows, fields) {
		console.log("sql>>>>>>>>>:",sql)
	  if (err) {
	   	console.log(err);
	    callback(err, null);
	    return;
	  };
 
	  callback(null, rows, fields);
	});
}
module.exports = db;
