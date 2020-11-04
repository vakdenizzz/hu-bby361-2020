-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Kas 2020, 13:08:07
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
  `BagısAdı` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin, ismi girilecek.\r\n',
  `BagısEPosta` varchar(99) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bagış yapan kurum veya kisinin kurumsal iletisim icin kullandığı mail adresi girilecek.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bagısbilgisi`
--

INSERT INTO `bagısbilgisi` (`BagısNo`, `BagısTipi`, `BagısAdı`, `BagısEPosta`) VALUES
(1, 'kisi bagısı', 'Volkan Akdeniz', 'volkan_98fb@gmail.com'),
(2, 'kisi', 'Ahmet Dursun', 'ahmett99@gmail.com'),
(3, 'özel', 'hacettepe kütüphanesi', 'hacettepete@edu.tr.com'),
(17, 'ÖzelBagıs', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(18, 'Özel', 'Çankaya Üniversitesi', 'cankaya@edu.tr.com'),
(19, 'Özel', 'Bilkent Üniversitesi', 'bilkent@edu.tr.com'),
(21, 'Kişi', 'Cemal Can', 'cemallaydın@gmail.com'),
(25, 'Özel', 'Çankaya Üniversitesi', 'cankaya@edu.tr.com'),
(26, 'Kişi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com'),
(27, 'Kişi', 'Volkan Akdeniz', 'v.akdenizzz@gmail.com');

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
(14, '2234567899879', 2020, 'Hayvan ciftligi', 0, 'Türkçe'),
(16, '4334567899856', 2020, 'Körlük', 1, 'Türkçe'),
(17, '3634567899645', 2020, 'Fareler ve İnsanlar', 2, 'Türkçe'),
(19, '7534567899893', 2020, 'Şeker Portakalı', 4, 'Türkçe'),
(20, '2734567899817', 2020, 'Simyacı', 8, 'Türkçe'),
(21, '983456789665', 2018, 'Cesur Yeni Dünya', 3, 'İngilizce'),
(22, '7434567897483', 2020, 'Başkalarının Hayatı', 5, 'İngilizce'),
(23, '6634567893254', 2020, 'Kız Babası ve Kedi', 2, 'İngilizce'),
(24, '6934567899833', 2020, 'Madeline Miller', 7, 'İngilizce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `YayıneviNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerine ait numara sırayla otomatik bir sekilde artıs gösterecek\r\n',
  `YayıneviKayıtTarihi` date NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi kayıt tarihi sisteme girilecektir.\r\n',
  `YayıneviAdı` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ismine yer verilecek.\r\n',
  `YayıneviUrl` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait web sayfası veya sosyal medya linki yer alacak.\r\n',
  `YayıneviEPosta` varchar(98) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin  kurumsal iletisimi gerceklestirdigi e posta adresi yer alacak.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`YayıneviNo`, `YayıneviKayıtTarihi`, `YayıneviAdı`, `YayıneviUrl`, `YayıneviEPosta`) VALUES
(1, '2020-10-05', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(2, '2020-11-03', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com'),
(3, '2020-11-03', ' Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'satis@kirmizikedi.com'),
(4, '2020-10-15', 'Sel Yayıncılık', 'https://www.selyayincilik.com/', 'destek@selyayincilik.com'),
(5, '2020-11-03', ' Can Çocuk Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(7, '2020-11-01', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(8, '2020-09-08', 'İthaki Yayınları', 'http://www.ithaki.com.tr/', 'info@ithaki.com.tr'),
(9, '2020-08-04', 'Beyaz Baykuş', 'https://beyazbaykus.com/', 'info@beyazbaykus.com'),
(10, '2020-07-14', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(13, '2020-08-20', 'İthaki Yayın', 'http://www.ithaki.com.tr/', '	\r\ninfo@ithaki.com.tr');

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

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bagısbilgisi`
--
ALTER TABLE `bagısbilgisi`
  ADD PRIMARY KEY (`BagısNo`);

--
-- Tablo için indeksler `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  ADD PRIMARY KEY (`KitapKayıtNo`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
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
