<?php

if (isset ($_POST['fname'])){

	$fname = $_POST['fname'];
	$mname = $_POST['mname'];
	$lname = $_POST['lname'];
	$uname = $_POST['uname'];
	$password = $_POST['password'];
	$cpassword = $_POST['cpassword'];
	$email = $_POST['email'];
	$uid = rand(11111, 99999);
	$date = date("Y-m-d H:i:s");
	$query = "SELECT UserName FROM user_table WHERE UserName = '$uname'";
	$mysql_query_run = mysql_query($query);
	$mysql_query_output = mysql_fetch_array($mysql_query_run);
	if ($mysql_query_output['UserName'] != NULL){
		echo "<font color = 'red'>Username already exists.</font><br>";
	}
	else{
		$query = "INSERT INTO user_table VALUES ('$uid','$fname','$mname','$lname','$uname','$password', '$email', '$date')";
		mysql_query($query);
		echo "<font color='blue'>Successfully Registered<br>Now you can login</font>";
	}
}

?>