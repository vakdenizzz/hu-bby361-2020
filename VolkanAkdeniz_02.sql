-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Kas 2020, 12:48:46
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
-- Görünüm yapısı durumu `alanbirlestirme`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `alanbirlestirme` (
`Eser` varchar(99)
,`YayınEviBilgisi` varchar(198)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bagisbilgisi`
--

CREATE TABLE `bagisbilgisi` (
  `BagısNo` int(11) NOT NULL COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `BagısTipi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisi ismi ve  özel mi yoksa kurum mu bagış yapıyor bilgisi girilecek\r\n',
  `BagısAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin, ismi girilecek.\r\n',
  `BagısEPosta` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin kurumsal iletisim icin kullandığı mail adresi girilecek.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bagisbilgisi`
--

INSERT INTO `bagisbilgisi` (`BagısNo`, `BagısTipi`, `BagısAdı`, `BagısEPosta`) VALUES
(1, 'kisi bagısı', 'Volkan Akdeniz', 'volkan_98fb@gmail.com'),
(2, 'kisi', 'Ahmet Dursun', 'ahmett99@gmail.com'),
(3, 'özel', 'hacettepe kütüphanesi', 'hacettepete@edu.tr.com'),
(4, 'ÖzelBagıs', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(5, 'Özel', 'Çankaya Üniversitesi', 'cankaya@edu.tr.com'),
(6, 'Özel', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(7, 'Kişi', 'Cemal Can', 'cemallaydın@gmail.com'),
(8, 'Özel', 'Çankaya Üniversitesi', 'cankaya@edu.tr.com'),
(9, 'Kişi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com'),
(10, 'Kişi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `dörtkitaptanfazla`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `dörtkitaptanfazla` (
`KitapKayıtNo` int(11)
,`ISBN` varchar(13)
,`KitapYayımTarihi` year(4)
,`KitapAdı` varchar(99)
,`KitapAdetBilgisi` int(99)
,`DilBilgisi` varchar(99)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `fullekran`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `fullekran` (
`BagısTipi` varchar(99)
,`BagısAdı` varchar(99)
,`BagısEPosta` varchar(99)
,`ISBN` varchar(13)
,`DilBilgisi` varchar(99)
,`KitapAdetBilgisi` int(99)
,`KitapAdı` varchar(99)
,`YazarAdı` varchar(99)
,`YayıneviAdı` varchar(98)
,`YayıneviEPosta` varchar(98)
,`YayıneviUrl` varchar(98)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `genelgörünüm`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `genelgörünüm` (
`KitapAdı` varchar(99)
,`YazarAdı` varchar(99)
,`YayıneviAdı` varchar(98)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapbilgileri`
--

CREATE TABLE `kitapbilgileri` (
  `KitapKayıtNo` int(11) NOT NULL COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın kimligi niteligi tasıyan ISBN bilgisi bu alana INT olarak girilecektir.\r\n',
  `KitapYayımTarihi` year(4) NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın basım tarihi sisteme girilecektir.\r\n',
  `KitapAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap ismi girilecek.\r\n',
  `KitapAdetBilgisi` int(99) NOT NULL COMMENT 'Kitabın kütüphade kaç adet olduğu bilgisi girilecek\r\n',
  `DilBilgisi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın hangi dilde yazıldıgı bilgisine yer verilecek\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitapbilgileri`
--

INSERT INTO `kitapbilgileri` (`KitapKayıtNo`, `ISBN`, `KitapYayımTarihi`, `KitapAdı`, `KitapAdetBilgisi`, `DilBilgisi`) VALUES
(1, '1234567899876', 2020, 'Kürk Mantolu Madonna', 1, 'Türkçe'),
(2, '2234567899879', 2020, 'Hayvan ciftligi', 0, 'Türkçe'),
(3, '4334567899856', 2020, 'Körlük', 1, 'Türkçe'),
(4, '3634567899645', 2020, 'Fareler ve İnsanlar', 2, 'Türkçe'),
(5, '7534567899893', 2020, 'Şeker Portakalı', 4, 'Türkçe'),
(6, '2734567899817', 2020, 'Simyacı', 8, 'Türkçe'),
(7, '983456789665', 2018, 'Cesur Yeni Dünya', 3, 'İngilizce'),
(8, '7434567897483', 2020, 'Başkalarının Hayatı', 5, 'İngilizce'),
(9, '6634567893254', 2020, 'Kız Babası ve Kedi', 2, 'İngilizce'),
(10, '6934567899833', 2020, 'Madeline Miller', 7, 'İngilizce');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tamliste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tamliste` (
`BagısAdı` varchar(99)
,`KitapAdı` varchar(99)
,`KitapAdetBilgisi` int(99)
,`YayıneviAdı` varchar(98)
,`YazarAdı` varchar(99)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `teklisorgu`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `teklisorgu` (
`DilBilgisi` varchar(99)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayıneviNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `YayıneviKayıtTarihi` date NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt tarihi sisteme girilecektir.\r\n',
  `YayıneviAdı` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ismine yer verilecek.\r\n',
  `YayıneviUrl` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait web sayfası veya sosyal medya linki yer alacak.\r\n',
  `YayıneviEPosta` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin  kurumsal iletisimi gerceklestirdigi e posta adresi yer alacak.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayıneviNo`, `YayıneviKayıtTarihi`, `YayıneviAdı`, `YayıneviUrl`, `YayıneviEPosta`) VALUES
(1, '2020-10-05', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(2, '2020-11-03', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(3, '2020-11-03', ' Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'satis@kirmizikedi.com'),
(4, '2020-10-15', 'Sel Yayıncılık', 'https://www.selyayincilik.com/', 'destek@selyayincilik.com'),
(5, '2020-11-03', ' Can Çocuk Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(6, '2020-11-01', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(7, '2020-09-08', 'İthaki Yayınları', 'http://www.ithaki.com.tr/', 'info@ithaki.com.tr'),
(8, '2020-08-04', 'Beyaz Baykuş', 'https://beyazbaykus.com/', 'info@beyazbaykus.com'),
(9, '2020-07-14', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(10, '2020-08-20', 'İthaki Yayın', 'http://www.ithaki.com.tr/', '	\r\ninfo@ithaki.com.tr');

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
(1, 'Sabahhatin Ali', '2020-10-28', NULL),
(2, 'George Orwell', '1988-08-04', NULL),
(3, 'Jose Saramago', '1990-11-09', NULL),
(4, 'John Steinbeck', '1988-11-13', NULL),
(5, 'Jose Mauro De Vasconcelos', '1920-10-20', NULL),
(6, 'Paulo Coelho', '2000-01-07', NULL),
(7, 'Aldous Huxley', '1987-04-08', NULL),
(8, 'Amy Grace Loyd', '1988-07-08', NULL),
(9, 'Erol Hızarcı', '1986-09-10', NULL),
(10, 'Madeline Miller', '1996-06-09', NULL);

-- --------------------------------------------------------

--
-- Görünüm yapısı `alanbirlestirme`
--
DROP TABLE IF EXISTS `alanbirlestirme`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alanbirlestirme`  AS  select `k`.`KitapAdı` AS `Eser`,concat(`y`.`YayıneviAdı`,'--',`y`.`YayıneviEPosta`) AS `YayınEviBilgisi` from (`kitapbilgileri` `k` join `yayinevi` `y`) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `dörtkitaptanfazla`
--
DROP TABLE IF EXISTS `dörtkitaptanfazla`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dörtkitaptanfazla`  AS  select `kitapbilgileri`.`KitapKayıtNo` AS `KitapKayıtNo`,`kitapbilgileri`.`ISBN` AS `ISBN`,`kitapbilgileri`.`KitapYayımTarihi` AS `KitapYayımTarihi`,`kitapbilgileri`.`KitapAdı` AS `KitapAdı`,`kitapbilgileri`.`KitapAdetBilgisi` AS `KitapAdetBilgisi`,`kitapbilgileri`.`DilBilgisi` AS `DilBilgisi` from `kitapbilgileri` where `kitapbilgileri`.`KitapAdetBilgisi` > 3 ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `fullekran`
--
DROP TABLE IF EXISTS `fullekran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fullekran`  AS  select `b`.`BagısTipi` AS `BagısTipi`,`b`.`BagısAdı` AS `BagısAdı`,`b`.`BagısEPosta` AS `BagısEPosta`,`k`.`ISBN` AS `ISBN`,`k`.`DilBilgisi` AS `DilBilgisi`,`k`.`KitapAdetBilgisi` AS `KitapAdetBilgisi`,`k`.`KitapAdı` AS `KitapAdı`,`y`.`YazarAdı` AS `YazarAdı`,`e`.`YayıneviAdı` AS `YayıneviAdı`,`e`.`YayıneviEPosta` AS `YayıneviEPosta`,`e`.`YayıneviUrl` AS `YayıneviUrl` from (((`bagisbilgisi` `b` join `kitapbilgileri` `k`) join `yazarbilgileri` `y`) join `yayinevi` `e`) where `b`.`BagısNo` = `k`.`KitapKayıtNo` and `b`.`BagısNo` = `y`.`YazarNo` and `b`.`BagısNo` = `e`.`YayıneviNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `genelgörünüm`
--
DROP TABLE IF EXISTS `genelgörünüm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genelgörünüm`  AS  select `k`.`KitapAdı` AS `KitapAdı`,`y`.`YazarAdı` AS `YazarAdı`,`e`.`YayıneviAdı` AS `YayıneviAdı` from ((`yazarbilgileri` `y` join `yayinevi` `e`) join `kitapbilgileri` `k`) where `y`.`YazarNo` = `e`.`YayıneviNo` and `y`.`YazarNo` = `k`.`KitapKayıtNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `tamliste`
--
DROP TABLE IF EXISTS `tamliste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tamliste`  AS  select `b`.`BagısAdı` AS `BagısAdı`,`k`.`KitapAdı` AS `KitapAdı`,`k`.`KitapAdetBilgisi` AS `KitapAdetBilgisi`,`e`.`YayıneviAdı` AS `YayıneviAdı`,`y`.`YazarAdı` AS `YazarAdı` from (((`bagisbilgisi` `b` join `kitapbilgileri` `k`) join `yayinevi` `e`) join `yazarbilgileri` `y`) where `b`.`BagısNo` = `k`.`KitapKayıtNo` and `b`.`BagısNo` = `e`.`YayıneviNo` and `b`.`BagısNo` = `y`.`YazarNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `teklisorgu`
--
DROP TABLE IF EXISTS `teklisorgu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teklisorgu`  AS  select `kitapbilgileri`.`DilBilgisi` AS `DilBilgisi` from `kitapbilgileri` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bagisbilgisi`
--
ALTER TABLE `bagisbilgisi`
  ADD PRIMARY KEY (`BagısNo`);

--
-- Tablo için indeksler `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  ADD PRIMARY KEY (`KitapKayıtNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayıneviNo`);

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
  MODIFY `BagısNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kurum veya kisi  bilgilerine ait numara sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  MODIFY `KitapKayıtNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
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
