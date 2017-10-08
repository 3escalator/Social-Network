<?php


session_start();

require_once("db.php");


$message = mysqli_real_escape_string($conn, $_POST['message']);

$sql = "INSERT INTO messages (id_from, id_to, message) VALUES ('$_SESSION[id_user]','$_POST[id_user]', '$message')";
if($conn->query($sql) == true) {
	echo "ok";
} else {
	echo $conn->error;
}

?>