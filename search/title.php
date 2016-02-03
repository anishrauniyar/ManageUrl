<?php
	echo "<br>";
	$uid = $_SESSION['UID'];
	$query = "SELECT Title, URL FROM url_title_table WHERE UID = '$uid'";
	$query_run = mysql_query($query);
	while ($query_fetch = mysql_fetch_array($query_run)){
		$title_array = $query_fetch['Title'];
		$url_array = $query_fetch['URL'];
		echo "<a href = '$url_array'>".$title_array."</a><br>";
	}
?>