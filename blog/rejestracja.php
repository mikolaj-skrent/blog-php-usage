<?php 

require_once("./connect.php"); // pobiera polecenie z pliku connect.php



$username = $_POST["new-username"];
$password = $_POST["new-password"];
$rePass = $_POST["new-re-password"];  // 7-9 deklaracja zmiennych


if ($password == $rePass) { // sprawdza czy string w password i rePass są takie same, jeżeli tak przepuszcza dalej i rejestruje użytkownika w bazie danych - w innym przypadku zwraca komunikat błędu użytkownika
    $_SESSION["msg"] = "Udało się zarejestrować!";

$sql = "INSERT INTO `users` (`id`, `login`, `password`, `nickname`)
 VALUES (NULL, '$username', '$password', '$rePass')";

 mysqli_query($condom, $sql);

} else {
    $_SESSION["msg"] = "Podano różne hasła.";
}

header("Location: /index.php/");  // przekierowuje na daną stronę



$condom -> close(); // kończy połączenie connect DOM




?>
