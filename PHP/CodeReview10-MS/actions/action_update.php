<?php 

	require_once 'db-connect.php';

	if($_POST)
	{
		$id= $_POST["hidden_id"];

		$med_isbn_code= $_POST["med_isbn_code"];
		$med_title= $_POST["med_title"];
		$med_img= $_POST["med_img"];
		$med_author= $_POST["med_author"];
		$med_genre= $_POST["med_genre"];
		$med_publisher= $_POST["med_publisher"];
		$med_type= $_POST["med_type"];
		$med_status= $_POST["med_status"];

		$sql = "UPDATE `media` SET `med_isbn_code`='$med_isbn_code',`med_title`='$med_title',`med_img`='$med_img',`med_author`='$med_author',`med_genre`='med_genre',`med_publisher`='$med_publisher',`med_type`='$med_type',`med_status`='$med_status' WHERE `med_id` = $id";
		
		if($result = mysqli_query($conn, $sql))
		{
			echo "<h3 style='color:green;'>Successfully Uploaded !</h3> ";
			header("refresh:3; URL=../index.php");
			#header("refresh:3; URL=http://localhost/CodeReview10-MS/index.php")
		}
		

	}
	$conn->close();


 ?>