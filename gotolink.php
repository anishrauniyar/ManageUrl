<?php
	session_start();
	
	if (!empty($_SESSION)){
		if (isset($_GET['u'])){
			$link = $_GET['u'];
			echo $link;
			if (substr($link, 0, 7) == "http://"){
			
				header("location: $link");
			}
			else if (substr($link, 0, 8) == "https://"){
				header("location: $link");
			}
			else {
				$link = "http://".$link;
				header("location: $link");
			}
		}
		else {
			echo "no link";
		}
	}
	else {
		echo "<a href='index.php'>Login</a> First";
	}
?>