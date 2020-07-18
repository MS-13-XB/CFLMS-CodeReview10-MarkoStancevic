<?php 


	require_once "actions/db-connect.php";

	if($_GET["id"])
	{
		$id = $_GET["id"];

		$sql = "DELETE FROM media WHERE med_id = $id";

		if(mysqli_query($conn, $sql))
		{
			echo "<h3 style='color:green;'> Successfully deleted ! </h3>";
			header("refresh:3 ; URL=index.php");

		}
		else
		{
			echo "ERROR";
		}
	}

	$conn->close();

 ?>