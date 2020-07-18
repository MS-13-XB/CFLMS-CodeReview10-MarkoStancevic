<?php 

	$hostName= "localhost";
	$userName= "root";
	$password= "";
	$dbName= "cr10_markostancevic_biglibary";

	$conn = mysqli_connect($hostName, $userName, $password, $dbName);

	if(!$conn)
	{
		echo "E R R O R";
	}
	#another solutaion : if($conn->connect_error) {die("connection failed" $conn->connect_error);}
	



 ?>
