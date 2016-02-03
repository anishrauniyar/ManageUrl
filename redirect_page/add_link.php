<?php
	if(isset($_POST["link"])){

		$website = $_POST["link"];
		$websiteErr = "Valid URL";
		
		if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $website)) {
		  $websiteErr = "Invalid URL!!!";
		  echo "<font color= 'red'>".$websiteErr."</font>";
		}
		else{
			if (substr($website, 0, 7) == "http://"){
				$website = $website;
			}
			else if (substr($website, 0, 8) == "https://"){
				$website = $website;
			}
			else {
				$website = "http://".$website;
			}
			$uid = $_SESSION['UID'];
			$date = date("Y-m-d H:i:s");
			$update_query = "SELECT UID FROM url_category_table WHERE UID = '$uid' AND URL = '$website'";
			$run_query = mysql_query($update_query);
			$value = NULL;
			while($update_run_query = mysql_fetch_array($run_query)){
				$value = $update_run_query;
			}
			if ($value != NULL){
				//echo var_dump(mysql_query($update_query));
				$update = "UPDATE url_category_table SET Date = '$date' WHERE UID = '$uid' AND URL = '$website'";
				mysql_query($update);
				echo "<font color='red'>Updated to the Previous Category</font><br>";
			}
			else{
				try{
					$data = NULL;
					$html = file_get_html($website);
					if (!empty($html)){
						$data = $html->find('title');
					}
					//var_dump($data);
					if ($date == NULL){
							echo "Website cannot be opened";
					}	
					else{
						//INSERTING THE CATEGORY OF THE URL IN THE TABLE
						$url = "http://iframe.commtouch.com/urlf-miscat/ct-iframe.php?partnerid=8677&btnViewClassification=View%20Current%20URL%20Classification&urlString=".$website;
						//$url = "http://www.fb.com";
						$html = file_get_html($url);
						//echo $html;
						if (!empty($html)){
							$data =  $html->find('/html/body/form/div/table/tbody/tr[2]/td[2]/span');
						}
						$category = $data[0]->plaintext;
						//echo $category;
						$query = "INSERT INTO url_category_table VALUES ('$uid', '$category', '$website', '$date')";
						mysql_query($query);
						echo "<font color='red'>Added to your Category: ".$data[0]->plaintext."</font><br>";
						//echo $websiteErr;
						
						//INSERTING THE KEYWORDS OF THE URL IN THE TABLE
						$url = "http://www.alexa.com/siteinfo/".$website;
						$html = file_get_html($url);
						if (!empty($html)){
							$data = $html->find('td[class=topkeywordellipsis]');
						}
						foreach ($data as $value) {
							$keyword = $value->children(1)->plaintext;
							//echo $keyword;
							$query = "INSERT INTO url_search_table VALUES ('$uid', '$keyword', '$website', '$date')";
							mysql_query($query);
						}
						
						//INSERTING THE TITLE OF THE URL IN THE TABLE
						$html = file_get_html($website);
						try {
							if (!empty($html)){
								$data = $html->find('title');
							}
						}
						catch (Exception $e){
							echo "error occured";
						}
						if ($data == NULL){
							$title = $category;
						}
						else {
							$title = $data[0]->plaintext;
						}
						echo $title."<br>";
						$title_insert_query = "INSERT INTO url_title_table VALUES ('$uid', '$website', '$title', '$date')";
						mysql_query($title_insert_query);
					}
				}
				catch (Exception $e){
					echo "The site can't be opened, sorry!!!! Contact your admin or try to write the correct site link!!!";
				}
			}
		}
	}
?>