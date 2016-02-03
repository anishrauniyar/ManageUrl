
<!-- http://daveismyname.com/autocomplete-with-php-mysql-and-jquery-ui-bp#.VJFpOmOmXcs -->
<?php

include_once 'include/lib/simplehtmldom/simple_html_dom.php';
include 'include/constants.php';
session_start();
include "include/header.php";
?>
<script>
	$(document).ready(function(){
		$("#flip").click(function(){
			$("#panel").toggle("slow");
			$("#list").show();
			$("#output").hide();
			$("#home").click(function(){
				//$("#panel").toggle("slow");
				$("#list").show("slow");
				$("#output").hide();
			});
			$("#home1").click(function(){
				//$("#panel").toggle("slow");
				$("#list").show("slow");
				$("#output").hide();
				$("#url_output").html("");
			});
			$("#home").click(function(){
				//$("#panel").toggle("slow");
				$("#list").show("slow");
				$("#output").hide();
				$("#url_output").html("");
			});
			$("#search_keyword").click(function(){
				$("#output").show("slow");
				$("#keyword_output").show("slow");
				$("#title_output").hide();
				$("#list").hide();
			});
			$("#search_title").click(function(){
				$("#output").show("slow");
				$("#title_output").show("slow");
				$("#keyword_output").hide();
				$("#list").hide();
			});
			$("#submit_url").click(function(){
				var keywords = $("#keyword_url").val();
				$.post("search/keyword_url.php", {keyword: keywords}, function(data,status){$("#url_output").html(data); });
			});
			$("#submit_keyword").click(function(){
				var keywords = $("#keyword_keyword").val();
				$.post("search/keyword_keyword.php", {keyword: keywords}, function(data,status){$("#url_output").html(data); });
			});
		});
	});

</script>

<?php
$flag = 0;
$UID = NULL;
if(isset($_POST['username'])){ 
	$username = mysql_real_escape_string($_POST['username']);
	$password = mysql_real_escape_string($_POST['password']);
	$query = "$username IN (SELECT UserName FROM user_table WHERE Password = $password)";
	$query = "SELECT UID FROM user_table WHERE UserName = '$username' AND Password = '$password'";
	$query_output = mysql_query($query);
	while ($query_fetch_output = mysql_fetch_array($query_output)){
		$UID = $query_fetch_output['UID'];
	}
	if($UID != NULL){
		$_SESSION["Username"] = $username;
		$_SESSION["UID"] = $UID;
	}
	else{
		echo "Invalid Login<br>";
		echo "<a href = 'index.php'>Home Page</a>";
	}
}
	
?>
<?php
	include "redirect_page/add_link.php";
?>
<?php
if (!empty($_SESSION)){
	//var_dump($_SESSION);
	echo "<h4>SUCCESSFULLY LOGGED IN    <a href = 'logout.php'>signout</a><br>";
	echo "Welcome, ".$_SESSION['Username']."<br>";
	echo "Your user ID is: ".$_SESSION['UID'];
?>
	<form name = "link_post" method = "post" class = "addlink-form" action = "manageurl.php">
		<input type = "text" name = "link" id = "link">
		<input type = "Submit" value = "add link">
	</form>

	<div id="flip">Search History</div>
	<div id="panel">
	
		<div id = "list">
			<div id = "search_keyword"><font color = "blue">SEARCH WITH KEYWORD</font></div><br>
			<div id = "search_title"><font color = "blue">SEARCH WITH TITLE</font></div><br>
			<!--<div id = "search_category"><font color = "blue">Search with Category</font></div><br>-->
		</div>
		
		<div id = "output">
		
			<div id = "keyword_output">
				<h3><font color = "blue">SEARCH WITH KEYWORD</font></h3>
				<table align = "center">
					<tr>
						<td><input type = "text" name = "keyword_url" id = "keyword_url"></td>
						<td><button id = "submit_url">Search with url letters</button></td>
					</tr>
					<tr>
						<td><input type = "text" name = "keyword_keyword" id = "keyword_keyword"></td>
						<td><button id = "submit_keyword">Search with Keywords</button></td>
					</tr>
				</table>
				<div id = "url_output"></div>
				<div id = "home1"><h3><font color = "red">BACK</font></h3></div>
			</div>
			
			<div id = "title_output">
				<h3><font color = "blue">URL TITLES</font></h3>
				Here are the list of your titles<br>
				<!--<a href = "http://www.github.com">Github</a><br>-->
				<?php
					include "search/title.php";
				?>
				<div id = "home"><h3><font color = "red">BACK</font></h3></div>
			</div>
			
		</div>
		
	</div>
	
	<div id = "history_title">YOUR OVERALL HISTORIES ARE BELOW</div>
	<?php
		include "redirect_page/display_link.php";
	?>

<?php
}
else{
	echo "<a href='index.php'>Login First</a>";
}
?>


<?php
include "include/footer.php";
?>