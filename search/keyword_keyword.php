<?php
	include '../include/constants.php';
	session_start();
	
	$uid = $_SESSION['UID'];
	$keyword = $_POST['keyword'];
	$query_keyword = "SELECT DISTINCT URL, Date FROM url_search_table WHERE UID = '$uid' AND Keyword LIKE '%$keyword%'";
	$mysql_query_output = mysql_query($query_keyword);
	echo "<table>";
	while ($mysql_query_fetch = mysql_fetch_array($mysql_query_output)){
		$url = $mysql_query_fetch['URL'];
		$date = $mysql_query_fetch['Date'];
		echo "<td><tr><a href = gotolink.php?u=$url>".$url."</tr></td><br>";
	}
	echo "</table>";
?>	