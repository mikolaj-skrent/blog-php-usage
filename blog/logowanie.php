<?php
session_start();
require_once("./connect.php");

$username = $_POST["username"];
$password = $_POST["password"];

$sql = ("SELECT * FROM users WHERE login='$username' AND password='$password'");

$result = mysqli_query($condom, $sql);

if(mysqli_num_rows($result)) {
$_SESSION["msg"] = "Podane nieprawidłowe dane. <br> Nie przejdziesz dalej!";
header("Location: /index.php/");
} else {
    header("Location: s_blog-article.html");
}






 
?>