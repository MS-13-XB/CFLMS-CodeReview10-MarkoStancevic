<?php 

	require_once"db-connect.php";

	if($_POST)
	{
		$med_isbn_code= $_POST["med_isbn_code"];
		$med_title= $_POST["med_title"];
		$med_img= $_POST["med_img"];
		$med_author= $_POST["med_author"];
		$med_genre= $_POST["med_genre"];
		$med_publisher= $_POST["med_publisher"];
		$med_type= $_POST["med_type"];
		$med_status= $_POST["med_status"];

		$sql ="INSERT INTO `media`(`med_isbn_code`, `med_title`, `med_img`, `med_author`, `med_genre`, `med_publisher`, `med_type`, `med_status`) VALUES ('$med_isbn_code','$med_title','$med_img','$med_author','$med_genre','$med_publisher','$med_type','med_status')";

		if(mysqli_query($conn,$sql))
		{
			echo "<h3 style='color:green'>Successfully created !</h3>";
			header("refresh:3 ; URL=../index.php");
			
		}
		else
		{
			echo "E R R O R";
		}
	}
	$conn->close();



 ?>