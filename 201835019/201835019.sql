-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2021, 16:02:03
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `201835019`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `pno` int(11) NOT NULL,
  `splace` varchar(255) NOT NULL,
  `eplace` varchar(255) NOT NULL,
  `tno` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `ticket` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`pno`, `splace`, `eplace`, `tno`, `tname`, `price`, `ticket`, `total`) VALUES
(1, 'İstanbul(Sğtlü.Çeşme)', 'Ankara Gar', 81036, 'YHT: İSTANBUL-ANKARA', 85, 5, 425),
(3, 'Ankara Gar', 'İstanbul(Sğtlü.Çeşme)', 81035, 'YHT: ANKARA-İSTANBUL', 85, 1, 85),
(7, 'Konya YHT', 'İstanbul(Sğtlü.Çeşme)', 81323, 'YHT: KONYA-İSTANBUL', 103, 2, 206),
(10, 'Ankara Gar', 'İstanbul(Sğtlü.Çeşme)', 81035, 'YHT: ANKARA-İSTANBUL', 85, 2, 170);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `train_details`
--

CREATE TABLE `train_details` (
  `tno` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `startplace` varchar(255) NOT NULL,
  `destinationplace` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `train_details`
--

INSERT INTO `train_details` (`tno`, `tname`, `startplace`, `destinationplace`, `price`) VALUES
(81035, 'YHT: ANKARA-İSTANBUL', 'Ankara Gar', 'İstanbul(Sğtlü.Çeşme)', 85),
(81036, 'YHT: İSTANBUL-ANKARA', 'İstanbul(Sğtlü.Çeşme)', 'Ankara Gar', 85),
(81322, 'YHT: İSTANBUL-KONYA', 'İstanbul(Sğtlü.Çeşme)', 'Konya YHT', 103),
(81323, 'YHT: KONYA-İSTANBUL', 'Konya YHT', 'İstanbul(Sğtlü.Çeşme)', 103);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`pno`);

--
-- Tablo için indeksler `train_details`
--
ALTER TABLE `train_details`
  ADD PRIMARY KEY (`tno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
