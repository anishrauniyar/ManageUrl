
<!-- http://daveismyname.com/autocomplete-with-php-mysql-and-jquery-ui-bp#.VJFpOmOmXcs -->
<?php

include_once 'include/lib/simplehtmldom/simple_html_dom.php';
include 'include/constants.php';
session_start();
include "include/header.php";
?>

<?php
echo date("Y-m-d H:i:s");
?>

<?php
	if (!empty($_SESSION)){
		echo $_SESSION['Username']." is already logged in<br>Goto <a href='manageurl.php'>Home Page</a><br>OR <a href='logout.php'>sign out</a>";
	}
	else{
?>
<h4>LOGIN FIRST</h4>
<form name = "login" method = "POST" action = "manageurl.php" style="margin-left:38%;">
	<table border="0">
		<tr>
			<td>Username</td>
			<td><input type = "text" name = "username" id = "username"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type = "password" name = "password" id = "password"></td>
		</tr>
		<tr>
			<td><a href="index.php?process=register" method="POST">Register</a></td>
			<td><input type = "submit" value = "Login"></td>
		</tr>
	</table>
</form>
<?php
}
?>

<?php
	include "redirect_page/registered.php";
?>

<?php
if(isset($_GET['process'])){
	if($_GET['process'] == 'register'){
?>
		<h4>REGISTER</h4>
		<form name = "register" method = "POST" action = "index.php"  onsubmit = "return Validate()" style="margin-left:35%;">
			<table border = "0">
				<tr>
					<td>First Name</td>
					<td><input type = "text" name = "fname" id = "fname" onchange="ValidateFirstName();"></td>
				</tr>
				<tr>
					<td>Middle Name</td>
					<td><input type = "text" name = "mname" id = "mname" onchange="ValidateMiddleName();"></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type = "text" name = "lname" id = "lname" onchange="ValidateLastName();"></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type = "text" name = "uname" id = "uname" onchange="ValidateUserName();"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type = "password" name = "password" id = "password" onchange="ValidatePassword();"></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type = "password" name = "cpassword" id = "cpassword" onchange="ValidateConfirmPassword();"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type = "text" name = "email" id = "email" onchange="ValidateEmail();"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type = "submit" value = "Submit"></td>
					<td><input type = "reset" value = "Reset"></td>
				</tr>
			</table>
		</form>
<?php
	}
}
?>
<?php
include "include/footer.php";
?>