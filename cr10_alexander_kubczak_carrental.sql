-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Sep 2019 um 10:18
-- Server-Version: 10.3.16-MariaDB
-- PHP-Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_alexander_kubczak_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `PickUp` varchar(255) DEFAULT NULL,
  `DropOff` varchar(255) DEFAULT NULL,
  `RentDate` datetime DEFAULT NULL,
  `DropDate` datetime DEFAULT NULL,
  `VehicleID` int(11) DEFAULT NULL,
  `BookingStatus` varchar(255) DEFAULT NULL,
  `InvoiceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `booking`
--

INSERT INTO `booking` (`BookingID`, `CustomerID`, `PickUp`, `DropOff`, `RentDate`, `DropDate`, `VehicleID`, `BookingStatus`, `InvoiceID`) VALUES
(1, 1, 'Central', 'Central', '2018-12-28 13:30:50', '2019-01-05 18:38:50', 1, 'Completed', 1),
(2, 2, 'Neustadt', 'Vienna', '2019-09-06 16:19:22', '2019-09-07 12:35:00', 2, 'Completed', 2),
(3, 3, 'Vienna', 'Neustadt', '2017-10-10 12:05:10', '2017-10-05 10:05:10', 3, 'Completed', 3),
(4, 4, 'Saltburg', 'Vienna', '2019-09-01 14:38:50', NULL, 4, 'Rented', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `Town` varchar(255) DEFAULT NULL,
  `ZipCode` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `TelephoneNumber` int(11) DEFAULT NULL,
  `LicenseNumber` int(11) DEFAULT NULL,
  `LicenseDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Adress`, `Town`, `ZipCode`, `Email`, `TelephoneNumber`, `LicenseNumber`, `LicenseDate`) VALUES
(1, 'Marvin', 'Dornen', 'Bohrer Straße 20', 'Hamburg', 20216, 'marvin.d@gmail.com', 176295735, 123456, 2019),
(2, 'Moritz', 'Kulle', 'Zur Goldenen Ente 4', 'Entenhausen', 44176, 'moritz.kulle@gmail.com', 18421735, 128216, 2020),
(3, 'Abdelrahim', 'Gilette', 'Rasiergasse 31', 'Bremen', 21631, 'gilette.abdi@yahoo.com', 1605953454, 268679, 2024),
(4, 'Celo', 'Brate', 'Am Zoo 23', 'Frankfurt', 60385, 'cevapecelo@azzlacks.com', 1609624575, 280122, 2021),
(5, 'Aykut', 'Anhan', 'Rothschildgasse 69', 'Offenbach am Main', 63069, 'haftiabi@azzlacks.com', 152679213, 982367, 2021);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceID` int(11) NOT NULL,
  `InvoiceDate` datetime DEFAULT NULL,
  `InvoiceStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `invoice`
--

INSERT INTO `invoice` (`InvoiceID`, `InvoiceDate`, `InvoiceStatus`) VALUES
(1, '2018-12-21 12:38:50', 'Completed'),
(2, '2019-09-05 13:15:22', 'Completed'),
(3, '2017-10-05 10:05:10', 'Completed'),
(4, '2019-09-01 12:38:50', 'Completed');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `Town` varchar(255) DEFAULT NULL,
  `ZipCode` int(11) DEFAULT NULL,
  `TelephoneNumber` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`LocationID`, `Name`, `Adress`, `Town`, `ZipCode`, `TelephoneNumber`, `Email`) VALUES
(1, 'Central', 'Central Street 25', 'London', 4156, 2147483647, 'central@coderental.com'),
(2, 'Neustadt-Rental', 'Wiener Neustadt', 'Fischauergasse 28', 2700, 664588532, 'neustadt@coderental.com'),
(3, 'Vienna', 'Vienna', 'Kettenbrückengasse 99', 1050, 2147483647, 'vienna@coderental.com'),
(4, 'Saltburg', 'Salzburg', 'Salzburggasse 31', 2700, 664588532, 'saltysalzburg@coderental.com');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `models`
--

CREATE TABLE `models` (
  `ModelID` int(11) NOT NULL,
  `Manufacturer` varchar(255) DEFAULT NULL,
  `Seats` int(11) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `Doors` int(11) DEFAULT NULL,
  `Extras` varchar(255) DEFAULT NULL,
  `FuelType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `models`
--

INSERT INTO `models` (`ModelID`, `Manufacturer`, `Seats`, `Type`, `Color`, `Doors`, `Extras`, `FuelType`) VALUES
(1, 'Mercedes-Maybach', 4, 'Limousine', 'Black', 4, 'Makes everyone jealous', 'Petrol'),
(2, 'Peel', 1, 'impossible to specify', 'Red', 1, 'Ability to park anywhere', 'Petrol'),
(3, 'Fiat', 4, 'Combi', 'Grey', 4, 'Advanced Ligthing System', 'Petrol'),
(4, 'Lamborghini', 2, 'Super-Car', 'Gold', 2, 'Gets you from A-B in basically no time', 'Petrol'),
(5, 'Dodge', 4, 'Pick-Up', 'Blue', 2, 'Large Trunk Capacity', 'Diesel');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `InvoiceID` int(11) DEFAULT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentType` varchar(255) DEFAULT NULL,
  `PaymentStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `payment`
--

INSERT INTO `payment` (`PaymentID`, `CustomerID`, `InvoiceID`, `PaymentDate`, `PaymentType`, `PaymentStatus`) VALUES
(1, 1, 1, '2018-12-23 14:30:00', 'CreditCard', 'Completed'),
(2, 2, 2, '2019-09-05 15:30:22', 'PayPal', 'Pending'),
(3, 3, 3, '2017-10-07 04:20:20', 'DebitCard', 'Completed'),
(4, 4, 4, '2019-09-06 19:12:54', 'CreditCard', 'Pending');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE `vehicles` (
  `VehicleID` int(11) NOT NULL,
  `LicenseNumber` int(11) DEFAULT NULL,
  `LocationID` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `ModelID` int(11) DEFAULT NULL,
  `Availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `vehicles`
--

INSERT INTO `vehicles` (`VehicleID`, `LicenseNumber`, `LocationID`, `Price`, `ModelID`, `Availability`) VALUES
(1, 12345, 1, 250, 1, 0),
(2, 54321, 2, 20, 2, 0),
(3, 98765, 1, 50, 3, 0),
(4, 45678, 3, 300, 4, 0),
(5, 23984, 4, 150, 5, 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `VehicleID` (`VehicleID`),
  ADD KEY `InvoiceID` (`InvoiceID`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceID`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indizes für die Tabelle `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`ModelID`);

--
-- Indizes für die Tabelle `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `InvoiceID` (`InvoiceID`);

--
-- Indizes für die Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VehicleID`),
  ADD KEY `LocationID` (`LocationID`),
  ADD KEY `ModelID` (`ModelID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`VehicleID`) REFERENCES `vehicles` (`VehicleID`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`);

--
-- Constraints der Tabelle `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`);

--
-- Constraints der Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`ModelID`) REFERENCES `models` (`ModelID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
