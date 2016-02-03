<?php
	$uid = $_SESSION['UID'];
	$query = "SELECT DISTINCT Category from url_category_table WHERE UID = '$uid'";
	$query_run = mysql_query($query);
	$i = 0;
	while ($mysql_fetch_category = mysql_fetch_array($query_run)){
		$mysql_category[$i] =  $mysql_fetch_category['Category'];
		$i = $i + 1;
	}
	//echo $mysql_category[$i];
	//echo $i;		
	$j = 0;
	while ($i > 0){
		echo "<h4>".$mysql_category[$j]."</h4>";
		$url_category = $mysql_category[$j];
		$query = "SELECT URL FROM url_category_table WHERE Category = '$url_category' AND UID = '$uid' ORDER BY Date";
		$query_run_url = mysql_query($query);
		echo "<table style='text-align:left;'>";
		while ($mysql_fetch_url = mysql_fetch_array($query_run_url)){
			$url = $mysql_fetch_url['URL'];
			echo "<tr><td width='70%'><a href = 'gotolink.php?u=$url'>".$mysql_fetch_url['URL']."</a></td>";
			$query = "SELECT Distinct Date FROM url_category_table WHERE Category = '$url_category' AND UID = '$uid' AND URL = '$url'";
			$query_run_date = mysql_query($query);
			while ($mysql_fetch_date = mysql_fetch_array($query_run_date)){
				$date = $mysql_fetch_date['Date'];
				echo "<td width='20%'>".$date."</td>";
				echo "<td width='10%'><a href='delete.php?date=$date'><input type='hidden' name='date' value='$date'/><img src='include/image/delete.jpg' width='15px' height='15px' alt='delete'></img></a></td>";
			}
			echo "</tr>";
		}
		echo "</table>";
		$i = $i - 1;
		$j = $j + 1;
	}
?>