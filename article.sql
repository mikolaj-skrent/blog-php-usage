-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2026 at 10:58 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `descriptions`, `img`, `content`) VALUES
(1, 'PHP', 'Wprowadzę cię do PHP i przedstawię podstawy', 'image1.png', 'PHP jest językiem skryptowym, który jest szeroko stosowany do tworzenia dynamicznych stron internetowych. Oto kilka podstawowych elementów składni PHP:\r\n\r\n### 1. Tag otwierający i zamykający\r\nKażdy skrypt PHP musi zaczynać się od tagu otwierającego `<?php` i kończyć tagiem zamykającym `?>`. Wszystko, co znajduje się pomiędzy tymi tagami, jest interpretowane jako kod PHP.\r\n\r\n### 2. Zmienne\r\nZmienne w PHP zaczynają się od znaku dolara `$`, a następnie nazwy zmiennej. Nazwy zmiennych są case-sensitive, co oznacza, że `$zmienna` i `$Zmienna` to dwie różne zmienne.\r\n\r\n### 3. Komentarze\r\nPHP obsługuje trzy rodzaje komentarzy:\r\n\r\n`//` - komentarz jednoliniowy\r\n`#` - komentarz jednoliniowy\r\n`/*` ... */ - komentarz wieloliniowy\r\n### 4. Instrukcje warunkowe\r\nPHP obsługuje instrukcje warunkowe, takie jak `if`, `else`, i `elseif`. Pozwalają one na wykonywanie różnych bloków kodu w zależności od spełnienia określonych warunków.\r\n\r\n### 5. Pętle\r\nPHP oferuje różne rodzaje pętli, takie jak `for`, `while`, i `foreach`. Pętle pozwalają na wielokrotne wykonywanie bloku kodu.'),
(2, 'JavaScript', 'Wprowadzę cię do JavaScript i przedstawię podstawy', 'image2.png', 'JavaScript to język programowania umożliwiający tworzenie interaktywności na stronach WWW.\r\n\r\n### 1. Zmienne\r\n\r\nW nowoczesnym JS zmienne deklaruje się za pomocą słów kluczowych `let` (zmienna, która może się zmienić) oraz `const` (stała). Dawniej używano `var`.\r\n\r\n### 2. Typy danych\r\n\r\nJS obsługuje różne typy danych, m.in. String (tekst), Number (liczby), Boolean (prawda/fałsz), Array (tablice) oraz Object (obiekty).\r\n\r\n### 3. Funkcje\r\n\r\nFunkcje to bloki kodu zaprojektowane do wykonywania konkretnych zadań. Deklaruje się je słowem `function` lub za pomocą tzw. funkcji strzałkowych: `const mojaFunkcja = () => { ... };`.\r\n\r\n### 4. DOM (Document Object Model)\r\n\r\nJavaScript pozwala na manipulowanie strukturą HTML w czasie rzeczywistym poprzez model DOM, np. za pomocą metody `document.querySelector()`.\r\n\r\n### 5. Zdarzenia (Events)\r\n\r\nJS reaguje na interakcje użytkownika, takie jak kliknięcia (`click`), najechanie myszką (`mouseover`) czy wysłanie formularza (`submit`), za pomocą tzw. \"Event Listeners\".\r\n\r\n---\r\n\r\nCzy chciałbyś, abym przygotował teraz konkretny przykład kodu, który łączy te wszystkie trzy technologie w jednym prostym projekcie?'),
(3, 'HTML', 'Wprowadzę cię do HTML i przedstawię ci podstawy', 'image3.png', 'HTML to język znaczników używany do tworzenia struktury stron internetowych.\r\n\r\n### 1. Znaczniki (Tagi)\r\n\r\nPodstawą HTML są znaczniki zamknięte w nawiasach ostrokątnych, np. `<div>`. Większość z nich występuje w parach: otwierający `<tag>` i zamykający `</tag>`.\r\n\r\n### 2. Atrybuty\r\n\r\nZnaczniki mogą mieć atrybuty, które dostarczają dodatkowych informacji o elemencie, np. `<a href=\"url\">` lub `<img src=\"obrazek.jpg\">`. Atrybuty zawsze znajdują się w tagu otwierającym.\r\n\r\n### 3. Struktura dokumentu\r\n\r\nKażdy poprawny plik HTML powinien zawierać deklarację `<!DOCTYPE html>` oraz sekcje `<html>`, `<head>` (metadane) i `<body>` (treść widoczna dla użytkownika).\r\n\r\n### 4. Elementy blokowe i liniowe\r\n\r\nElementy takie jak `<h1>` czy `<p>` zajmują całą dostępną szerokość (blokowe), podczas gdy `<span>` czy `<a>` zajmują tylko tyle miejsca, ile to konieczne (liniowe).'),
(4, 'CSS', 'Wprowadzę cię do CSS i przedstawię ci podstawy', 'image4.png', 'CSS służy do opisu wyglądu i formatowania dokumentów HTML.\r\n\r\n### 1. Selektory\r\n\r\nSelektory wskazują, które elementy HTML mają zostać ostylowane. Mogą to być nazwy tagów (`p`), klasy (`.klasa`) lub identyfikatory (`#id`).\r\n\r\n### 2. Deklaracje (Właściwość i Wartość)\r\n\r\nStyl definiuje się wewnątrz nawiasów klamrowych `{}` jako pary `właściwość: wartość;`, np. `color: red;`. Każda deklaracja musi kończyć się średnikiem.\r\n\r\n### 3. Kaskadowość\r\n\r\nCSS działa kaskadowo, co oznacza, że jeśli do jednego elementu odnoszą się sprzeczne reguły, przeglądarka wybiera tę o wyższym priorytecie lub zapisaną później w kodzie.\r\n\r\n### 4. Model pudełkowy (Box Model)\r\n\r\nKażdy element HTML jest traktowany jako prostokątne pudełko składające się z: marginesu (`margin`), obramowania (`border`), dopełnienia (`padding`) oraz samej zawartości (`content`).');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
