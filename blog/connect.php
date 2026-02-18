<?php

$condom = mysqli_connect("localhost", "root", "", "blog"); // negocjuje połączenie z bazą danych
if($condom -> errno) { // errno zwraca numer błędu, a error zwraca jego opis
    echo "Nie połączono z bazą danych."; // wiadomość zwrotna
    exit;
    } else {
    echo "Połączono z bazą danyh." . "<br>"; // w innym (połącznie z baza danych) przypadku zwraca wiadomość o sukcesie
}


?>
