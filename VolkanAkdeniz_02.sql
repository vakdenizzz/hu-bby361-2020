-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2020, 13:44:52
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
CREATE DATABASE IF NOT EXISTS `volkanakdeniz_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `volkanakdeniz_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bagisbilgisi`
--

CREATE TABLE `bagisbilgisi` (
  `BagisNo` int(11) NOT NULL COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `BagisTipi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisi ismi ve  özel mi yoksa kurum mu bagış yapıyor bilgisi girilecek\r\n',
  `BagisAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin, adı girilecek.\r\n',
  `BagisEPosta` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin kurumsal iletisim icin kullandığı mail adresi girilecek.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bagisbilgisi`
--

INSERT INTO `bagisbilgisi` (`BagisNo`, `BagisTipi`, `BagisAdı`, `BagisEPosta`) VALUES
(1, 'Kisi', 'Volkan Akdeniz', 'volkan_98fb@gmail.com'),
(2, 'Kisi', 'Ahmet Dursun', 'ahmett99@gmail.com'),
(3, 'Özel', 'Hacettepe kütüphanesi', 'hacettepete@edu.tr.com'),
(4, 'Özel', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(5, 'Özel', 'Cankaya Üniversitesi', 'cankaya@edu.tr.com'),
(6, 'Özel', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(7, 'Kisi', 'Cemal Can', 'cemallaydın@gmail.com'),
(8, 'Özel', 'Cankaya Üniversitesi', 'cankaya@edu.tr.com'),
(9, 'Kisi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com'),
(10, 'Kisi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapbilgileri`
--

CREATE TABLE `kitapbilgileri` (
  `KitapKayitNo` int(11) NOT NULL COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın kimligi niteligi tasıyan ISBN bilgisi bu alana INT olarak girilecektir.\r\n',
  `KitapYayımTarihi` year(4) NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın basım tarihi sisteme girilecektir.\r\n',
  `KitapAdi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap ismi girilecek.\r\n',
  `KitapAdetBilgisi` int(99) NOT NULL COMMENT 'Kitabın kütüphade kaç adet olduğu bilgisi girilecek\r\n',
  `DilBilgisi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın hangi dilde yazıldıgı bilgisine yer verilecek\r\n',
  `BagisNo` int(11) NOT NULL COMMENT 'Bagıs Kayıt numarasıdır',
  `YayineviNo` int(11) NOT NULL COMMENT 'Yayınevi kayıt no getirir',
  `YazarNo` int(11) NOT NULL COMMENT 'Yazar kayıt numarasını getirir.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitapbilgileri`
--

INSERT INTO `kitapbilgileri` (`KitapKayitNo`, `ISBN`, `KitapYayımTarihi`, `KitapAdi`, `KitapAdetBilgisi`, `DilBilgisi`, `BagisNo`, `YayineviNo`, `YazarNo`) VALUES
(1, '1234567899876', 2020, 'Kürk Mantolu Madonna', 1, 'Türkçe', 0, 0, 0),
(2, '2234567899879', 2020, 'Hayvan Ciftligi', 0, 'Türkçe', 0, 0, 0),
(3, '4334567899856', 2020, 'Körlük', 1, 'Türkçe', 0, 0, 0),
(4, '3634567899645', 2020, 'Fareler ve İnsanlar', 2, 'Türkçe', 0, 0, 0),
(5, '7534567899893', 2020, 'Seker Portakalı', 4, 'Türkçe', 0, 0, 0),
(6, '2734567899817', 2020, 'Simyacı', 8, 'Türkçe', 0, 0, 0),
(7, '983456789665', 2018, 'Cesur Yeni Dünya', 3, 'İngilizce', 0, 0, 0),
(8, '7434567897483', 2020, 'Baskalarının Hayatı', 5, 'İngilizce', 0, 0, 0),
(9, '6634567893254', 2020, 'Kız Babası ve Kedi', 2, 'İngilizce', 0, 0, 0),
(10, '6934567899833', 2020, 'Madeline Miller', 7, 'İngilizce', 0, 0, 0);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo1`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo1` (
`BagisAdı` varchar(99)
,`BagisTipi` varchar(99)
,`KitapAdi` varchar(99)
,`DilBilgisi` varchar(99)
,`KitapAdetBilgisi` int(99)
,`AD_SOYAD` varchar(198)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo2`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo2` (
`BagisAdı` varchar(99)
,`KitapAdi` varchar(99)
,`DilBilgisi` varchar(99)
,`AD_SOYAD` varchar(198)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo3`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo3` (
`KitapAdetBilgisi` int(99)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo4`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo4` (
`KitapYayımTarihi` year(4)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayineviNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `YayineviKayıtTarihi` date NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt tarihi sisteme girilecektir.\r\n',
  `YayineviAdı` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ismine yer verilecek.\r\n',
  `YayineviUrl` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait web sayfası veya sosyal medya linki yer alacak.\r\n',
  `YayineviEPosta` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin  kurumsal iletisimi gerceklestirdigi e posta adresi yer alacak.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayineviNo`, `YayineviKayıtTarihi`, `YayineviAdı`, `YayineviUrl`, `YayineviEPosta`) VALUES
(1, '2020-10-05', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(2, '2020-11-03', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(3, '2020-11-03', ' Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'satis@kirmizikedi.com'),
(4, '2020-10-15', 'Sel Yayıncılık', 'https://www.selyayincilik.com/', 'destek@selyayincilik.com'),
(5, '2020-11-03', ' Can Çocuk Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(6, '2020-11-01', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(7, '2020-09-08', 'Ithaki Yayınları', 'http://www.ithaki.com.tr/', 'info@ithaki.com.tr'),
(8, '2020-08-04', 'Beyaz Baykus', 'https://beyazbaykus.com/', 'info@beyazbaykus.com'),
(9, '2020-07-14', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(10, '2020-08-20', 'Ithaki Yayın', 'http://www.ithaki.com.tr/', '	\r\ninfo@ithaki.com.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarbilgileri`
--

CREATE TABLE `yazarbilgileri` (
  `YazarNo` int(11) NOT NULL COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `YazarAdi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın isim ve soyisim bilgileri girilecek.\r\n',
  `YazarSoyad` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Soyadı bilgisi girilecek.',
  `YazarDoğum Tarihi` date DEFAULT current_timestamp() COMMENT 'Yazarın dogum tarihi sisteme girilecektir.\r\n',
  `YazarURL` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazara ait bilgilere Yönlendirir.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazarbilgileri`
--

INSERT INTO `yazarbilgileri` (`YazarNo`, `YazarAdi`, `YazarSoyad`, `YazarDoğum Tarihi`, `YazarURL`) VALUES
(1, 'Sabahhatin Ali', 'Senyuva', '2020-10-28', NULL),
(2, 'Orwell', 'George ', '1988-08-04', NULL),
(3, 'Saramago', 'Jose ', '1990-11-09', NULL),
(4, 'Steinbeck', 'John', '1988-11-13', NULL),
(5, 'Vasconcelos', 'Jose Mauro', '1920-10-20', NULL),
(6, 'Coelho', 'Paulo ', '2000-01-07', NULL),
(7, 'Huxley', 'Aldous', '1987-04-08', NULL),
(8, 'Grace Loyd', 'Amy ', '1988-07-08', NULL),
(9, 'Hızarcı', 'Erol ', '1986-09-10', NULL),
(10, 'Miller', 'Madeline', '1996-06-09', NULL);

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo1`
--
DROP TABLE IF EXISTS `tablo1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo1`  AS  select `b`.`BagisAdı` AS `BagisAdı`,`b`.`BagisTipi` AS `BagisTipi`,`k`.`KitapAdi` AS `KitapAdi`,`k`.`DilBilgisi` AS `DilBilgisi`,`k`.`KitapAdetBilgisi` AS `KitapAdetBilgisi`,concat(`y`.`YazarAdi`,'',`y`.`YazarSoyad`) AS `AD_SOYAD` from (((`bagisbilgisi` `b` join `kitapbilgileri` `k`) join `yayinevi` `e`) join `yazarbilgileri` `y`) where `b`.`BagisNo` = `k`.`KitapKayitNo` and `b`.`BagisNo` = `e`.`YayineviNo` and `b`.`BagisNo` = `y`.`YazarNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo2`
--
DROP TABLE IF EXISTS `tablo2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo2`  AS  select `b`.`BagisAdı` AS `BagisAdı`,`k`.`KitapAdi` AS `KitapAdi`,`k`.`DilBilgisi` AS `DilBilgisi`,concat(`y`.`YazarAdi`,'',`y`.`YazarSoyad`) AS `AD_SOYAD` from (((`bagisbilgisi` `b` join `kitapbilgileri` `k`) join `yayinevi` `e`) join `yazarbilgileri` `y`) where `b`.`BagisNo` = `k`.`KitapKayitNo` and `b`.`BagisNo` = `e`.`YayineviNo` and `b`.`BagisNo` = `y`.`YazarNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo3`
--
DROP TABLE IF EXISTS `tablo3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo3`  AS  select `k`.`KitapAdetBilgisi` AS `KitapAdetBilgisi` from `kitapbilgileri` `k` where `k`.`KitapAdetBilgisi` < 3 ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo4`
--
DROP TABLE IF EXISTS `tablo4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo4`  AS  select `k`.`KitapYayımTarihi` AS `KitapYayımTarihi` from `kitapbilgileri` `k` where `k`.`KitapYayımTarihi` > 2010 ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bagisbilgisi`
--
ALTER TABLE `bagisbilgisi`
  ADD PRIMARY KEY (`BagisNo`);

--
-- Tablo için indeksler `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  ADD PRIMARY KEY (`KitapKayitNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayineviNo`);

--
-- Tablo için indeksler `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  ADD PRIMARY KEY (`YazarNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bagisbilgisi`
--
ALTER TABLE `bagisbilgisi`
  MODIFY `BagisNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  MODIFY `KitapKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayineviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  MODIFY `YazarNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
