<?php



define('DB_SERVER', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'manage_url');

$conn = mysql_connect(DB_SERVER, DB_USER, DB_PASSWORD);
mysql_select_db(DB_NAME);


/*
define('DB_SERVER', 'mysql.freehostingnoads.net'); //mysql host server: mysql.freehostingnoads.net or server2.freehostingnoads.net or 31.170.166.2
define('DB_USER', 'u309651980_root');
define('DB_PASSWORD', 'cesar@Young11');
define('DB_NAME', 'u309651980_url');

$conn = mysql_connect(DB_SERVER, DB_USER, DB_PASSWORD);
mysql_select_db(DB_NAME);
*/
?>