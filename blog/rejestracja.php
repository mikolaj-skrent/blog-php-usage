<?php
session_start();
require_once("./connect.php"); // pobiera polecenie z pliku connect.php

echo $username = $_POST["new-username"];
echo "<br>";
echo $password = $_POST["new-password"];
echo "<br>";
echo $rePass = $_POST["new-re-password"];
echo "<br><hr><br>";

$username = $_POST["new-username"];
$password = $_POST["new-password"];
$rePass = $_POST["new-re-password"];  // deklaracja zmiennych

if ($password != $rePass) {
    $_SESSION["msg"] = "Podano różne hasła.";
}


// sprawdza czy jest juz taki login w bazie 22 - 30
$checkUserQuery = "SELECT id FROM `users` WHERE `login` = '$username'";
$checkResult = mysqli_query($condom, $checkUserQuery);

if (mysqli_num_rows($checkResult) > 0) {
    // Jeśli licznik wierszy jest większy niż 0, znaczy że login zajęty
    $_SESSION["msg"] = "Taki użytkownik już istnieje!";
    header("Location: index.php");
    exit();
}

$sql = "INSERT INTO `users` (`id`, `login`, `password`, `nickname`)
  VALUES (NULL, '$username', '$password', '$username".time()."')"; // deklaracja polecenia sql, które wstawia dane do bazy danych

if ($password == $rePass) { // sprawdza czy string w password i rePass są takie same, jeżeli tak przepuszcza dalej i rejestruje użytkownika w bazie danych - w innym przypadku zwraca komunikat błędu użytkownika
    $_SESSION["msg"] = "Udało się zarejestrować!";
    mysqli_query($condom, $sql);
}





$condom->close(); // kończy połączenie connect DOM

header("Location: index.php");  // przekierowuje na daną stronę
