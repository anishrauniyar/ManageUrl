<!DOCTYPE html>

<?php
include 'include/constants.php';
session_start();
?>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage URL</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/base/minified/jquery-ui.min.css" type="text/css" /> 
<body>
<h1>SEARCHED RESULT</h1>

<?php

	if (isset($_POST['search'])){
		$search_term = $_POST['search'];
		$uid = $_SESSION['UID'];
		$query = "SELECT DISTINCT URL, Date FROM url_search_table WHERE UID = '$uid' AND Keyword LIKE '%$search_term%' OR URL LIKE '%$search_term%'";
		$query_run = mysql_query($query);
		while ($mysql_fetch_values = mysql_fetch_array($query_run)){
			$url = $mysql_fetch_values['URL'];
			$date = $mysql_fetch_values['Date'];
			echo "<tr><td><a href = 'gotolink.php?u=$url'>".$url."</a> ".$date."<br>";
		}
		$query = "SELECT DISTINCT URL, Date FROM url_category_table WHERE UID = '$uid' AND Category LIKE '%$search_term%'";
		$query_run = mysql_query($query);
		while ($mysql_fetch_values = mysql_fetch_array($query_run)){
			$url = $mysql_fetch_values['URL'];
			$date = $mysql_fetch_values['Date'];
			echo "<tr><td><a href = 'gotolink.php?u=$url'>".$url."</a> ".$date."<br>";
		}
	}
	
?>

</body>
</html>
