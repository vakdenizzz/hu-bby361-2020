-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Kas 2020, 10:18:49
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `volkanakdeniz_01`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bagısbilgisi`
--

CREATE TABLE `bagısbilgisi` (
  `BagısNo` int(11) NOT NULL COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `BagısTipi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisi ismi ve  özel mi yoksa kurum mu bagış yapıyor bilgisi girilecek\r\n',
  `BagısAdı` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bagış yapan kurum veya kisinin, ismi girilecek.\r\n',
  `BagısEPosta` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bagış yapan kurum veya kisinin kurumsal iletisim icin kullandığı mail adresi girilecek.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bagısbilgisi`
--

INSERT INTO `bagısbilgisi` (`BagısNo`, `BagısTipi`, `BagısAdı`, `BagısEPosta`) VALUES
(1, 'kisi bagısı', 'volkan akdeniz', 'volkan_98fb@gmail.com'),
(2, 'kisi', 'ahmet dursun', 'ahmett99@gmail.co0'),
(3, 'özel', 'hacettepe kütüphanesi', 'hacettepete@edu.tr'),
(17, 'ÖzelBagıs', NULL, NULL),
(18, 'Özel(hacettepe)', NULL, NULL),
(19, 'Özel(Bilkent)', NULL, NULL),
(21, 'Özel-Kişi', NULL, NULL),
(25, 'Özel(çankaya)', NULL, NULL),
(26, 'Kişi-Özel', NULL, NULL),
(27, 'Kişi-kişi', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapbilgileri`
--

CREATE TABLE `kitapbilgileri` (
  `KitapKayıtNo` int(11) NOT NULL COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın kimligi niteligi tasıyan ISBN bilgisi bu alana INT olarak girilecektir.\r\n',
  `KitapYayımTarihi` date DEFAULT current_timestamp() COMMENT 'Kitabın basım tarihi sisteme girilecektir.\r\n',
  `KitapAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap ismi girilecek.\r\n',
  `KitapAdetBilgisi` int(99) DEFAULT NULL COMMENT 'Kitabın kütüphade kaç adet olduğu bilgisi girilecek\r\n',
  `DilBilgisi` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kitabın hangi dilde yazıldıgı bilgisine yer verilecek\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitapbilgileri`
--

INSERT INTO `kitapbilgileri` (`KitapKayıtNo`, `ISBN`, `KitapYayımTarihi`, `KitapAdı`, `KitapAdetBilgisi`, `DilBilgisi`) VALUES
(1, '1234567899876', '0000-00-00', 'Kürk Mantolu Madonna', 1, 'Türkçe'),
(14, '1234567899879', NULL, 'Hayvan ciftligi', NULL, NULL),
(16, '1234567899856', '0000-00-00', 'Körlük', NULL, NULL),
(17, '1234567899645', '2020-11-03', 'Fareler ve İnsanlar', NULL, NULL),
(19, '1234567899893', NULL, 'Şeker Portakalı', NULL, NULL),
(20, '1234567899817', '2020-11-03', 'Simyacı', NULL, NULL),
(21, '123456789665', '2018-09-15', 'Cesur Yeni Dünya', NULL, NULL),
(22, '1234567897483', '2020-03-10', 'Başkalarının Hayatı', NULL, NULL),
(23, '1234567893254', '2020-08-18', 'Kız Babası ve Kedi', NULL, NULL),
(24, '1234567899833', '2020-10-06', 'Madeline Miller', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `YayıneviNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `YayıneviKayıtTarihi` date NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt tarihi sisteme girilecektir.\r\n',
  `YayıneviAdı` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ismine yer verilecek.\r\n',
  `YayıneviUrl` varchar(98) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevine ait web sayfası veya sosyal medya linki yer alacak.\r\n',
  `YayıneviEPosta` varchar(98) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevinin  kurumsal iletisimi gerceklestirdigi e posta adresi yer alacak.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`YayıneviNo`, `YayıneviKayıtTarihi`, `YayıneviAdı`, `YayıneviUrl`, `YayıneviEPosta`) VALUES
(1, '2020-10-05', 'can', NULL, NULL),
(2, '2020-11-03', 'Can Yayınları', NULL, NULL),
(3, '2020-11-03', ' Kırmızı Kedi', NULL, NULL),
(4, '2020-10-15', 'Sel Yayıncılık', NULL, NULL),
(5, '2020-11-03', ' Can Çocuk Yayınları', NULL, NULL),
(7, '2020-11-01', 'Can Yayın', NULL, NULL),
(8, '2020-09-08', 'İthaki Yayınları', NULL, NULL),
(9, '2020-08-04', 'Beyaz Baykuş', NULL, NULL),
(10, '2020-07-14', 'Destek Yayınları', NULL, NULL),
(13, '2020-08-20', 'İthaki Yayın', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarbilgileri`
--

CREATE TABLE `yazarbilgileri` (
  `YazarNo` int(11) NOT NULL COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `YazarAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın isim ve soyisim bilgileri girilecek.\r\n',
  `YazarDoğum Tarihi` date DEFAULT current_timestamp() COMMENT 'Yazarın dogum tarihi sisteme girilecektir.\r\n',
  `YazarURL` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazara ait bilgilere Yönlendirir.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazarbilgileri`
--

INSERT INTO `yazarbilgileri` (`YazarNo`, `YazarAdı`, `YazarDoğum Tarihi`, `YazarURL`) VALUES
(1, 'ali', '2020-10-28', NULL),
(2, 'George Orwell', '1988-08-04', NULL),
(3, 'Jose Saramago', '1990-11-09', NULL),
(4, 'John Steinbeck', '1988-11-13', NULL),
(5, 'Jose Mauro De Vasconcelos', '1920-10-20', NULL),
(6, 'Paulo Coelho', '2000-01-07', NULL),
(7, 'Aldous Huxley', '1987-04-08', NULL),
(8, 'Amy Grace Loyd', '1988-07-08', NULL),
(9, 'Erol Hızarcı', '1986-09-10', NULL),
(10, 'Madeline Miller', '1996-06-09', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bagısbilgisi`
--
ALTER TABLE `bagısbilgisi`
  ADD PRIMARY KEY (`BagısNo`),
  ADD UNIQUE KEY `BagısTipi` (`BagısTipi`),
  ADD UNIQUE KEY `BagısAdı` (`BagısAdı`),
  ADD UNIQUE KEY `BagısEposta` (`BagısEPosta`);

--
-- Tablo için indeksler `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  ADD PRIMARY KEY (`KitapKayıtNo`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD UNIQUE KEY `KitapAdı` (`KitapAdı`),
  ADD UNIQUE KEY `DilBilgisi` (`DilBilgisi`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`YayıneviNo`),
  ADD UNIQUE KEY `YayıneviAdı` (`YayıneviAdı`);

--
-- Tablo için indeksler `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  ADD PRIMARY KEY (`YazarNo`),
  ADD UNIQUE KEY `YazarAdı` (`YazarAdı`),
  ADD UNIQUE KEY `YazarUrl` (`YazarURL`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bagısbilgisi`
--
ALTER TABLE `bagısbilgisi`
  MODIFY `BagısNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  MODIFY `KitapKayıtNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `YayıneviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  MODIFY `YazarNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
