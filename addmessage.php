<?php

session_start();

require_once("db.php");

if(isset($_POST)) {
	$sql = "INSERT INTO messages (id_from, id_to, message) VALUES ('$_SESSION[id_user]', '$_POST[id]', '$_POST[message]')";
	if($conn->query($sql)===TRUE) {
		echo "ok";
	} else {
		echo $sql;
	}
}

?>