<?php
session_start();
require_once("./connect.php");  // linie 2-3 zaczyna sesję i pobiera polecenie z pliku connect.php

$username = $_POST["username"];
$password = $_POST["password"]; // ustawia zmienne

$sql = ("SELECT * FROM users WHERE login='$username' AND password='$password'"); // deklarujemy polecenie zmiennej sql (czym jest)

$result = mysqli_query($condom, $sql); // sprawdza czy użytkownik z takimi danymi istnieje istnieje

if (mysqli_num_rows($result)) { // if sprawdza czy wpisane dane logowania są poprawne
    $_SESSION["user"] = $username;
    header("Location: /blog/blog-article.php"); // przekierowuje na daną stronę
} else {
    $_SESSION["msg"] = "Podane nieprawidłowe dane. <br> Nie przejdziesz dalej!";
    header("Location: /blog/");
}
