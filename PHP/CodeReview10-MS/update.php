<?php 

	require_once "actions/db-connect.php";

	if($_GET["id"])
	{
		$id = $_GET["id"];

		$sql = "SELECT * FROM media WHERE med_id = $id";
		$result = mysqli_query($conn, $sql);

		$row = $result->fetch_assoc();

	}
	$conn->close();
 ?>


 <!DOCTYPE html>
 <html>
 <head>
 	<title>Libary</title>
 </head>
 <body>
 
	<form action="actions/action_update.php" method="post">
		<input type="hidden" name="hidden_id" value="<?php echo $row['med_id'] ?>"><br>
		<input type="text" name="med_isbn_code" value="<?php echo $row['med_isbn_code'] ?>"><br>
		<input type="text" name="med_title" value="<?php echo $row['med_title'] ?>"><br>
		<input type="text" name="med_img" value="<?php echo $row['med_img'] ?>"><br>
		<input type="text" name="med_author" value="<?php echo $row['med_author'] ?>"><br>
		<input type="text" name="med_genre" value="<?php echo $row['med_genre'] ?>"><br>
		<input type="text" name="med_publisher" value="<?php echo $row['med_publisher'] ?>"><br>
		<input type="text" name="med_type" value="<?php echo $row['med_type'] ?>"><br>
		<input type="text" name="med_status" value="<?php echo $row['med_status'] ?>"><br>
		<input type="submit" name="Upload" value="Upload">
	</form>


 </body>
 </html>