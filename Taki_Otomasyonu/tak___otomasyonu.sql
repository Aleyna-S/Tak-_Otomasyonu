-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Haz 2020, 17:12:47
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `takı_otomasyonu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `urunkodu` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` int(11) DEFAULT NULL,
  `müsteri` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telno` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(90) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `urunkodu`, `fiyat`, `müsteri`, `telno`, `adres`) VALUES
(25, '11', 40, 'aleyna şahin', '0562232214', 'elazığ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `urunkodu` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunadı` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urunkodu`, `urunadı`, `adet`) VALUES
(11, '1', 'Zincir Halhal', 500),
(12, '2', 'Çoklu Halhal', 500),
(13, '3', 'Çoklu Halhal', 550),
(14, '4', 'Taş Detaylı Halhal', 550),
(15, '5', 'İnci Yüzük', 550),
(16, '6', 'Mavi Taş Yüzük', 350),
(17, '7', 'Özel Taş Yüzük', 300),
(18, '8', 'Pırlanta Yüzük', 100),
(19, '9', 'Kalp Küpe', 400),
(20, '10', 'Flamingo Küpe', 400),
(21, '11', 'Boncuk Küpe', 400),
(22, '12', 'Yaprak Küpe', 450),
(23, '13', 'Yusufçuk Künye', 450),
(24, '14', 'Taş Künye', 450),
(25, '15', 'Çoklu Künye', 450),
(26, '16', 'Boncuk Künye', 450),
(27, '17', 'Cam Kolye', 200),
(28, '18', 'Kelebek Kolye', 200),
(29, '19', 'Boncuk  Kolye', 150),
(30, '20', 'İnci Kolye', 55),
(31, '21', 'Boncuk Kolye', 300);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyekle`
--

CREATE TABLE `uyekle` (
  `id` int(11) NOT NULL,
  `kad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `eposta` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telno` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyekle`
--

INSERT INTO `uyekle` (`id`, `kad`, `sifre`, `eposta`, `telno`) VALUES
(2, 'Merve', '14', 'merve@gmail.com', '0545 455 4360'),
(3, 'bus', '12', 'bus@gmail.com', '05456522545'),
(4, 'sefa', '15', 'sefa@gmail.com', '05454785456'),
(8, 'onur', '963', 'onur@gmail.com', '0546632256'),
(9, 'hasan', '741', 'hasan@gmail.com', '05455633215'),
(17, 'merve', '111', 'merve@gmail.com', '0565523214'),
(30, 'aylin', '222', 'aylin@gmail.com', '056223145');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yönetici`
--

CREATE TABLE `yönetici` (
  `id` int(11) NOT NULL,
  `yad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ysifre` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yönetici`
--

INSERT INTO `yönetici` (`id`, `yad`, `ysifre`) VALUES
(1, 'aleyna', '147');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyekle`
--
ALTER TABLE `uyekle`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yönetici`
--
ALTER TABLE `yönetici`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `uyekle`
--
ALTER TABLE `uyekle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `yönetici`
--
ALTER TABLE `yönetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
