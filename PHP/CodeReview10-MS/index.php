<!DOCTYPE html>
<html>
<head>
	<title>Libary</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@600&display=swap" rel="stylesheet">   
	<style type="text/css">

	div {
		width: 100%;
		background-image: url("images/library.jpg");
		background-repeat: no-repeat;
		}

	img {
		width: 100%;
 		object-fit: cover;
		}	
		
	</style>
	
</head>
<body>
	<hr>
	<h1 style="text-align: center;">House of unspoken words</h1>

	<hr>
	<div>
	<img src="images/libary.jpg" alt="libary"><hr>
	</div>


	<?php 
	
		include ("actions/db-connect.php");

		$sql = "SELECT * FROM media";
		$result = mysqli_query($conn, $sql);

		if($result->num_rows == 0)
		{
			echo "NO VALUES IN THE DATABASE";
		}
		elseif($result->num_rows == 1)
		{
			$row = $result->fetch_assoc();
			echo $row["med_id"] . " --- " . $row["med_isbn_code"] . " --- " . $row["med_title"] . " --- " . $row["med_img"] . " --- " . $row["med_author"] . " --- " . $row["med_genre"] . " --- " . $row["med_publisher"] . " --- " . $row["med_type"] . " --- " . $row["med_status"]  . " --- [ <a href='update.php?id=".$value["med_id"] ."'>Update</a> ] - [ <a href='delete.php?id=".$value["med_id"] ."'>Delete</a> ] <br>";	
		}
		else
		{
			$rows = $result->fetch_all(MYSQLI_ASSOC);
			foreach ($rows as $key => $value) 
			{
				echo $value["med_id"] . " --- " . $value["med_isbn_code"] . " --- " . $value["med_title"] . " --- " . $value["med_img"] . " --- " . $value["med_author"] . " --- " . $value["med_genre"] . " --- " . $value["med_publisher"] . " --- " . $value["med_type"] . " --- " . $value["med_status"] . " --- [ <a href='update.php?id=".$value["med_id"] ."'>Update</a> ] - [ <a href='delete.php?id=".$value["med_id"] ."'>Delete</a> ] <br>";

			}

		}
		echo "<hr><a href='create.php'>New Media</a>";

		$conn->close();
	
	?>














<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>


