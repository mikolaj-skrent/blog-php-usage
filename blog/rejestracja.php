<?php 

require_once("./connect.php");



$username = $_POST["new-username"];
$password = $_POST["new-password"];
$rePass = $_POST["new-re-password"];


if ($password == $rePass) {
    $_SESSION["msg"] = "Udało się zarejestrować!";

$sql = "INSERT INTO `users` (`id`, `login`, `password`, `nickname`)
 VALUES (NULL, '$username', '$password', '$rePass')";

 mysqli_query($condom, $sql);

} else {
    $_SESSION["msg"] = "Podano różne hasła.";
}

header("Location: /index.php/");



$condom -> close();



?>