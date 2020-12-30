-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Ara 2020, 11:46:02
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
-- Tablo için tablo yapısı `kitapbilgileri`
--

CREATE TABLE `kitapbilgileri` (
  `KitapKayitNo` int(11) NOT NULL COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın kimligi niteligi tasıyan ISBN bilgisi bu alana INT olarak girilecektir.\r\n',
  `KitapYayımTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın basım tarihi sisteme girilecektir.\r\n',
  `KitapAdi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap ismi girilecek.\r\n',
  `KitapAdetBilgisi` int(99) NOT NULL COMMENT 'Kitabın kütüphade kaç adet olduğu bilgisi girilecek\r\n',
  `DilBilgisi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın hangi dilde yazıldıgı bilgisine yer verilecek\r\n',
  `YayineviNo` int(11) NOT NULL COMMENT 'Yayınevi kayıt no getirir',
  `YazarNo` int(11) NOT NULL COMMENT 'Yazar kayıt numarasını getirir.',
  `KitapAcikla` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitap Hakkında öz bilgi verilecek'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitapbilgileri`
--

INSERT INTO `kitapbilgileri` (`KitapKayitNo`, `ISBN`, `KitapYayımTarihi`, `KitapAdi`, `KitapAdetBilgisi`, `DilBilgisi`, `YayineviNo`, `YazarNo`, `KitapAcikla`) VALUES
(1, '1234567899876', '2020-10-14 12:20:29', 'Kürk Mantolu Madonna', 1, 'Türkçe', 1, 1, 'Kürk Mantolu Madonna kitap özeti yer alacaktır.'),
(2, '2234567899879', '2020-06-17 12:21:11', 'Hayvan Ciftligi', 7, 'Türkçe', 2, 2, 'Hayvan Ciftligi kitabına ait özet bilgisi yer alacaktır.'),
(3, '4334567899856', '2020-06-07 12:22:28', 'Körlük', 1, 'Türkçe', 3, 3, 'Körlük kitabına ait özet bilgisi yer alacaktır.'),
(4, '3634567899645', '2020-12-12 09:22:46', 'Fareler ve İnsanlar', 2, 'Türkçe', 4, 4, 'Fareler ve İnsanlar kitabına ait özet bilgisi yer alacaktır.'),
(5, '7534567899893', '2020-07-25 12:23:08', 'Seker Portakalı', 4, 'Türkçe', 5, 5, 'Seker Portakalı kitabına ait özet bilgisi yer alacaktır.'),
(6, '2734567899817', '2020-04-04 12:23:40', 'Simyacı', 8, 'Türkçe', 6, 6, 'Simyacı kitabına ait özet bilgisi yer alacaktır.'),
(7, '983456789665', '2020-04-25 12:23:54', 'Cesur Yeni Dünya', 3, 'İngilizce', 7, 7, 'Cesur ve Yeni Dünya kitabına ait özet bilgisi yer alacaktır.'),
(8, '7434567897483', '2020-04-24 12:24:10', 'Baskalarının Hayatı', 5, 'İngilizce', 8, 8, 'Baskalarının Hayatı hakkında kısa ve öz açıklamalar yer alır'),
(9, '6634567893254', '2020-12-01 12:24:38', 'Kız Babası ve Kedi', 2, 'İngilizce', 9, 9, 'Kız Babası ve Kedi hakkında kısa ve öz açıklamalar yer alır'),
(10, '6934567899833', '2019-09-13 12:24:53', 'Madeline Miller', 7, 'İngilizce', 10, 10, 'Madeline Miller hakkında kısa ve öz açıklamalar yer alır');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo1`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo1` (
`Kitap_Adı` varchar(99)
,`DilBilgisi` varchar(99)
,`KitapAdetBilgisi` int(99)
,`KitapYayımTarihi` timestamp
,`Ad_Soyad` varchar(199)
,`YazarURL` varchar(99)
,`YayineviAdi` varchar(98)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `tablo2`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `tablo2` (
`Kitap_Adı` varchar(99)
,`KitapYayımTarihi` timestamp
,`Ad_Soyad` varchar(199)
,`YayineviAdi` varchar(98)
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
`KitapYayımTarihi` timestamp
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayineviNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `YayineviKayıtTarihi` date NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt tarihi sisteme girilecektir.\r\n',
  `YayineviAdi` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ismine yer verilecek.\r\n',
  `YayineviUrl` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait web sayfası veya sosyal medya linki yer alacak.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayineviNo`, `YayineviKayıtTarihi`, `YayineviAdi`, `YayineviUrl`) VALUES
(1, '2020-10-05', 'Can Yayınları', 'https://canyayinlari.com/'),
(2, '2020-11-03', 'Can Yayınları', 'https://canyayinlari.com/'),
(3, '2020-11-03', ' Kırmızı Kedi', 'https://www.kirmizikedi.com/'),
(4, '2020-10-15', 'Sel Yayıncılık', 'https://www.selyayincilik.com/'),
(5, '2020-11-03', ' Can Çocuk Yayınları', 'https://canyayinlari.com/'),
(6, '2020-11-01', 'Can Yayınları', 'https://canyayinlari.com/'),
(7, '2020-09-08', 'Ithaki Yayınları', 'http://www.ithaki.com.tr/'),
(8, '2020-08-04', 'Beyaz Baykus', 'https://beyazbaykus.com/'),
(9, '2020-07-14', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa'),
(10, '2020-08-20', 'Ithaki Yayın', 'http://www.ithaki.com.tr/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarbilgileri`
--

CREATE TABLE `yazarbilgileri` (
  `YazarNo` int(11) NOT NULL COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n',
  `YazarKayit` date NOT NULL DEFAULT current_timestamp() COMMENT 'yazar kayıt tarihi belirlenecek',
  `YazarAdi` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın isim ve soyisim bilgileri girilecek.\r\n',
  `YazarSoyad` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Soyadı bilgisi girilecek.',
  `YazarURL` varchar(99) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Yazara ait bilgilere Yönlendirir.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazarbilgileri`
--

INSERT INTO `yazarbilgileri` (`YazarNo`, `YazarKayit`, `YazarAdi`, `YazarSoyad`, `YazarURL`) VALUES
(1, '2020-12-27', 'Sebahhattin', 'Ali', ''),
(2, '2020-12-27', 'Orwell', 'George ', ''),
(3, '2020-12-27', 'Saramago', 'Jose ', ''),
(4, '2020-12-27', 'John ', 'Steinbeck', ''),
(5, '2020-12-27', 'Vasconcelos', 'Jose Mauro', ''),
(6, '2020-12-27', 'Peyami', 'Safa', ''),
(7, '2020-12-27', 'Huxley', 'Aldous', ''),
(8, '2020-12-27', 'Grace Loyd', 'Amy ', ''),
(9, '2020-12-27', 'Hızarcı', 'Erol ', ''),
(10, '2020-12-27', 'Hamdi', 'Ülker', '');

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo1`
--
DROP TABLE IF EXISTS `tablo1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo1`  AS  select `k`.`KitapAdi` AS `Kitap_Adı`,`k`.`DilBilgisi` AS `DilBilgisi`,`k`.`KitapAdetBilgisi` AS `KitapAdetBilgisi`,`k`.`KitapYayımTarihi` AS `KitapYayımTarihi`,concat(`r`.`YazarAdi`,' ',`r`.`YazarSoyad`) AS `Ad_Soyad`,`r`.`YazarURL` AS `YazarURL`,`y`.`YayineviAdi` AS `YayineviAdi` from ((`kitapbilgileri` `k` join `yazarbilgileri` `r`) join `yayinevi` `y`) where `k`.`KitapKayitNo` = `y`.`YayineviNo` and `k`.`KitapKayitNo` = `r`.`YazarNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `tablo2`
--
DROP TABLE IF EXISTS `tablo2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tablo2`  AS  select `k`.`KitapAdi` AS `Kitap_Adı`,`k`.`KitapYayımTarihi` AS `KitapYayımTarihi`,concat(`r`.`YazarAdi`,' ',`r`.`YazarSoyad`) AS `Ad_Soyad`,`y`.`YayineviAdi` AS `YayineviAdi` from ((`kitapbilgileri` `k` join `yazarbilgileri` `r`) join `yayinevi` `y`) where `k`.`KitapKayitNo` = `y`.`YayineviNo` and `k`.`KitapKayitNo` = `r`.`YazarNo` ;

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
-- Tablo için AUTO_INCREMENT değeri `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  MODIFY `KitapKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap Bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=97;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayineviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n', AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  MODIFY `YazarNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazar bilgilerine ait numaralar sırayla ve otomatik bir sekilde artıs gösterecek.\r\n', AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

