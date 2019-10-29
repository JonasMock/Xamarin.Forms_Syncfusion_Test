-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 27. Okt 2019 um 21:27
-- Server-Version: 8.0.18
-- PHP-Version: 7.3.11-1+0~20191024.46+debian10~1.gbpf71ca0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `AC_Charts`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur Dringlichkeitr Tabelle `AC`
--

CREATE TABLE `AC_2` (
  `ID` int(20) NOT NULL,
  `Teilnehmer` text NOT NULL,
  `Event` text NOT NULL,
  `Kompetenz_ges` text NOT NULL,
  `Kompetenz` text NOT NULL,
  `Bewertung` int(11) NOT NULL,
  `Beobachter` text NOT NULL,
  `Label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten Dringlichkeitr Tabelle `AC`
--

INSERT INTO `AC_2` (`ID`, `Teilnehmer`, `Event`, `Kompetenz_ges`, `Kompetenz`, `Bewertung`, `Beobachter`, `Label`) VALUES
(1, 'Bachelorarbeit_1', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 3, '', 'Fachliche_Bearbeitung_Erstkor.'),
(2, 'Bachelorarbeit_1', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 4, '', 'Nutzung_von_Fachwissen_Erstkor.'),
(3, 'Bachelorarbeit_1', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 3, '', 'Einsatz_von_Methoden_Erstkor.'),
(4, 'Bachelorarbeit_1', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 4, '', 'Kreativität_Erstkor.'),
(5, 'Bachelorarbeit_1', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 2, '', 'Wirtschaftliche_Bewertung_Erstkor.'),
(6, 'Bachelorarbeit_1', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 3, '', 'Eigeninitiative_Erstkor.'),
(7, 'Bachelorarbeit_1', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 5, '', 'Systematik_Erstkor.'),
(8, 'Bachelorarbeit_1', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 3, '', 'Dokumentation_Erstkor.'),
(9, 'Bachelorarbeit_1', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 4, '', 'Literaturrecherche_Erstkor.'),

(10, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 3, '', 'Fachliche_Bearbeitung_Zweitkor.'),
(11, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 4, '', 'Nutzung_von_Fachwissen_Zweitkor.'),
(12, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 3, '', 'Einsatz_von_Methoden_Zweitkor.'),
(13, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 4, '', 'Kreativität_Zweitkor.'),
(14, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 5, '', 'Wirtschaftliche_Bewertung_Zweitkor.'),
(15, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 3, '', 'Eigeninitiative_Zweitkor.'),
(16, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 2, '', 'Systematik_Zweitkor.'),
(17, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 3, '', 'Dokumentation_Zweitkor.'),
(18, 'Bachelorarbeit_1', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 3, '', 'Literaturrecherche_Zweitkor.'),

(19, 'Bachelorarbeit_2', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 4, '', 'Fachliche_Bearbeitung_Erstkor.'),
(20, 'Bachelorarbeit_2', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 5, '', 'Nutzung_von_Fachwissen_Erstkor.'),
(21, 'Bachelorarbeit_2', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 4, '', 'Einsatz_von_Methoden_Erstkor.'),
(22, 'Bachelorarbeit_2', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 3, '', 'Kreativität_Erstkor.'),
(23, 'Bachelorarbeit_2', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 4, '', 'Wirtschaftliche_Bewertung_Erstkor.'),
(24, 'Bachelorarbeit_2', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 2, '', 'Eigeninitiative_Erstkor.'),
(25, 'Bachelorarbeit_2', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 3, '', 'Systematik_Erstkor.'),
(26, 'Bachelorarbeit_2', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 4, '', 'Dokumentation_Erstkor.'),
(27, 'Bachelorarbeit_2', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 5, '', 'Literaturrecherche_Erstkor.'),

(28, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 3, '', 'Fachliche_Bearbeitung_Zweitkor.'),
(29, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 4, '', 'Nutzung_von_Fachwissen_Zweitkor.'),
(30, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 2, '', 'Einsatz_von_Methoden_Zweitkor.'),
(31, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 3, '', 'Kreativität_Zweitkor.'),
(32, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 3, '', 'Wirtschaftliche_Bewertung_Zweitkor.'),
(33, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 4, '', 'Eigeninitiative_Zweitkor.'),
(34, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 4, '', 'Systematik_Zweitkor.'),
(35, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 5, '', 'Dokumentation_Zweitkor.'),
(36, 'Bachelorarbeit_2', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 2, '', 'Literaturrecherche_Zweitkor.'),

(37, 'Max. Bewertung', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 5, '', 'Fachliche_Bearbeitung_Erstkor.'),
(38, 'Max. Bewertung', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 5, '', 'Nutzung_von_Fachwissen_Erstkor.'),
(39, 'Max. Bewertung', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 5, '', 'Einsatz_von_Methoden_Erstkor.'),
(40, 'Max. Bewertung', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 5, '', 'Kreativität_Erstkor.'),
(41, 'Max. Bewertung', 'Erstkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 5, '', 'Wirtschaftliche_Bewertung_Erstkor.'),
(42, 'Max. Bewertung', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 5, '', 'Eigeninitiative_Erstkor.'),
(43, 'Max. Bewertung', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 5, '', 'Systematik_Erstkor.'),
(44, 'Max. Bewertung', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 5, '', 'Dokumentation_Erstkor.'),
(45, 'Max. Bewertung', 'Erstkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 5, '', 'Literaturrecherche_Erstkor.'),

(46, 'Max. Bewertung', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Fachliche_Bearbeitung', 5, '', 'Fachliche_Bearbeitung_Zweitkor.'),
(47, 'Max. Bewertung', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Nutzung_von_Fachwissen', 5, '', 'Nutzung_von_Fachwissen_Zweitkor.'),
(48, 'Max. Bewertung', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Einsatz_von_Methoden', 5, '', 'Einsatz_von_Methoden_Zweitkor.'),
(49, 'Max. Bewertung', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Kreativität', 5, '', 'Kreativität_Zweitkor.'),
(50, 'Max. Bewertung', 'Zweitkorrektur', 'Inhaltliche_Bearbeitung', 'Wirtschaftliche_Bewertung', 5, '', 'Wirtschaftliche_Bewertung_Zweitkor.'),
(51, 'Max. Bewertung', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Eigeninitiative', 5, '', 'Eigeninitiative_Zweitkor.'),
(52, 'Max. Bewertung', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Systematik', 5, '', 'Systematik_Zweitkor.'),
(53, 'Max. Bewertung', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Dokumentation', 5, '', 'Dokumentation_Zweitkor.'),
(54, 'Max. Bewertung', 'Zweitkorrektur', 'Problemorientierte_Darstellung', 'Literaturrecherche', 5, '', 'Literaturrecherche_Zweitkor.'),

(55, 'Bachelorarbeit_1', 'GES_Inhalt', '', '', 35, '', 'GES_Inhalt'),
(56, 'Bachelorarbeit_2', 'GES_Inhalt', '', '', 35, '', 'GES_Inhalt'),
(57, 'Max. Bewertung', 'GES_Inhalt', '', '', 50, '', 'GES_Inhalt'),

(58, 'Bachelorarbeit_1', 'GES_Problemorient.', '', '', 26, '', 'GES_Problemorient.'),
(59, 'Bachelorarbeit_2', 'GES_Problemorient.', '', '', 29, '', 'GES_Problemorient.'),
(60, 'Max. Bewertung', 'GES_Problemorient.', '', '', 40, '', 'GES_Problemorient.'),

(61, 'Bachelorarbeit_1', 'GES_Erstkorrektur', '', '', 31, '', 'GES_Erstkorrektur'),
(62, 'Bachelorarbeit_2', 'GES_Erstkorrektur', '', '', 28, '', 'GES_Erstkorrektur'),
(63, 'Max. Bewertung', 'GES_Erstkorrektur', '', '', 45, '', 'GES_Erstkorrektur'),

(64, 'Bachelorarbeit_1', 'GES_Zweitkorrektur', '', '', 30, '', 'GES_Zweitkorrektur'),
(65, 'Bachelorarbeit_2', 'GES_Zweitkorrektur', '', '', 28, '', 'GES_Zweitkorrektur'),
(66, 'Max. Bewertung', 'GES_Zweitkorrektur', '', '', 45, '', 'GES_Zweitkorrektur'),

(67, 'Bachelorarbeit_1', 'GES', '', '', 61, '', 'GES'),
(68, 'Bachelorarbeit_2', 'GES', '', '', 56, '', 'GES'),
(69, 'Max. Bewertung', 'GES', '', '', 90, '', 'GES');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes Dringlichkeitr die Tabelle `AC`
--
ALTER TABLE `AC_2`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
