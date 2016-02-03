 <?php
	include "include/constants.php";
	session_start();
	
	if (isset($_GET['date'])){
		$date = $_GET['date'];
		//$url = $_GET['url'];
		$uid = $_SESSION['UID'];
		//echo $date.$url.$uid;
		$query_category_table = "DELETE FROM url_category_table WHERE UID = '$uid' AND Date = '$date'";
		$query_search_table = "DELETE FROM url_search_table WHERE UID = '$uid' AND Date = '$date'";
		$query_title_table = "DELETE FROM url_title_table WHERE UID = '$uid' AND Date = '$date'";
		mysql_query($query_category_table);
		mysql_query($query_search_table);
		mysql_query($query_title_table);
		
		echo "Deleted from the database";
		header("location: manageurl.php");
	}
	
 ?>
 