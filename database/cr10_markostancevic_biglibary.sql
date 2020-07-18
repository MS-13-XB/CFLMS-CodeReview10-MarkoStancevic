-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jul 2020 um 15:59
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_markostancevic_biglibary`
--
CREATE DATABASE IF NOT EXISTS `cr10_markostancevic_biglibary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr10_markostancevic_biglibary`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contain`
--

CREATE TABLE `contain` (
  `contain_id` int(11) NOT NULL,
  `lib_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_first_name` varchar(55) DEFAULT NULL,
  `cus_last_name` varchar(55) DEFAULT NULL,
  `cus_DateOfBirth` date DEFAULT NULL,
  `cus_gender` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_first_name` varchar(55) DEFAULT NULL,
  `emp_last_name` varchar(55) DEFAULT NULL,
  `emp_DateOfBirth` date DEFAULT NULL,
  `emp_gender` enum('M','F') DEFAULT NULL,
  `emp_hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `libary`
--

CREATE TABLE `libary` (
  `lib_id` int(11) NOT NULL,
  `lib_naame` varchar(55) DEFAULT NULL,
  `lib_NumOfMA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manage`
--

CREATE TABLE `manage` (
  `manage_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `med_id` int(11) NOT NULL,
  `med_isbn_code` varchar(55) DEFAULT NULL,
  `med_title` varchar(55) NOT NULL,
  `med_img` varchar(55) DEFAULT NULL,
  `med_author` varchar(55) DEFAULT NULL,
  `med_genre` varchar(55) DEFAULT NULL,
  `med_publisher` varchar(55) DEFAULT NULL,
  `med_type` enum('CD','book','DVD') DEFAULT NULL,
  `med_status` enum('available','reserved') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`med_id`, `med_isbn_code`, `med_title`, `med_img`, `med_author`, `med_genre`, `med_publisher`, `med_type`, `med_status`) VALUES
(1, '137525988-0', 'JohnWick', 'images/JohnWick-Chapter1.jpg', 'ChadStahelski', 'med_genre', 'LionsGate', 'DVD', 'available'),
(2, '137525933-0', 'JohnWick:Chapter2', 'images/JohnWick-Chapter2.jpg', 'ChadStahelski', 'med_genre', 'LionsGate', 'DVD', 'available'),
(3, '137525911-0', 'JohnWick:Parabellum', 'images/JohnWick-Chapter3.jpg', 'ChadStahelski', 'med_genre', 'LionsGate', 'DVD', 'reserved'),
(4, '137919722-0', 'TheAvengers', 'images/TheAvengers.jpg', 'JossWhedon', 'med_genre', 'MarvelStudio', 'DVD', 'available'),
(5, '137919733-0', 'Avengers:AgeOfUltron', 'images/Avengers-AgeOfUltron.jpg', 'JossWhedon', 'med_genre', 'MarvelStudio', 'DVD', 'reserved'),
(6, '137919744-0', 'TheAvengers:InfinityWar', 'images/Avengers-InfinityWar.jpg', 'AntohnyRusso', 'med_genre', 'MarvelStudio', 'DVD', 'reserved'),
(7, '137919755-0', 'TheAvengers:Endgame', 'images/Avengers_Endgame.jpg', 'AntohnyRusso', 'med_genre', 'MarvelStudio', 'DVD', 'available'),
(8, '137737155-0', 'LOTR:TheFellowshipOfTheRing', 'images/TheFellowshipOfTheRing.jpg', 'J.R.R.Tolkien', 'med_genre', 'Allen&Unwin', 'book', 'reserved'),
(9, '137737177-0', 'LOTR:TheTwoTowers', 'images/TheTwoTowers.jpg', 'J.R.R.Tolkien', 'med_genre', 'Allen&Unwin', 'book', 'available'),
(10, '137737199-0', 'LOTR:TheReturnOfTheLKing', 'images/ReturnOfTheKing.jpg', 'J.R.R.Tolkien', 'med_genre', 'Allen&Unwin', 'book', 'reserved'),
(11, '137724838-0', 'Hello', 'images/LionelRichie-Hello.jpg', 'LionelRichie', 'med_genre', 'popStudios', 'CD', 'reserved'),
(12, '137724848-0', 'UcantTouchThis', 'images/MCHammer-YcTt.jpg', 'MCHammer', 'med_genre', 'studiosB', 'CD', 'available'),
(13, '137724858-0', 'HeyYa!', 'images/Outcast-HeyYa.jpg', 'Outcast', 'med_genre', 'FlyStudios', 'CD', 'available'),
(14, '137536335-0', 'Constatine', 'images/constantine.jpg', 'KevinBrodbin', 'med_genre', 'WarnerBrosPictures', 'DVD', 'reserved');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `supervised`
--

CREATE TABLE `supervised` (
  `supervised_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `visit`
--

CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL,
  `lib_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `work`
--

CREATE TABLE `work` (
  `work_id` int(11) NOT NULL,
  `lib_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`contain_id`),
  ADD KEY `lib_id` (`lib_id`),
  ADD KEY `med_id` (`med_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indizes für die Tabelle `libary`
--
ALTER TABLE `libary`
  ADD PRIMARY KEY (`lib_id`);

--
-- Indizes für die Tabelle `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`manage_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `med_id` (`med_id`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`med_id`);

--
-- Indizes für die Tabelle `supervised`
--
ALTER TABLE `supervised`
  ADD PRIMARY KEY (`supervised_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indizes für die Tabelle `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `lib_id` (`lib_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indizes für die Tabelle `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `lib_id` (`lib_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `contain`
--
ALTER TABLE `contain`
  MODIFY `contain_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `libary`
--
ALTER TABLE `libary`
  MODIFY `lib_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `manage`
--
ALTER TABLE `manage`
  MODIFY `manage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `supervised`
--
ALTER TABLE `supervised`
  MODIFY `supervised_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`lib_id`) REFERENCES `libary` (`lib_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`med_id`) REFERENCES `media` (`med_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`med_id`) REFERENCES `media` (`med_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `supervised`
--
ALTER TABLE `supervised`
  ADD CONSTRAINT `supervised_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `supervised_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`);

--
-- Constraints der Tabelle `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`lib_id`) REFERENCES `libary` (`lib_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`lib_id`) REFERENCES `libary` (`lib_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
