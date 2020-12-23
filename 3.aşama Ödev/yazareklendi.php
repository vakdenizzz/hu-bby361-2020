<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglantı.php");

    /* Ekleme işlemi sorgusu */
    $YazarAdi = mysqli_real_escape_string($baglanti, $_POST['YazarAdi']);
    $YazarSoyad = mysqli_real_escape_string($baglanti, $_POST['YazarSoyad']);
    $YazarURL = mysqli_real_escape_string($baglanti, $_POST['YazarURL']);
    $sorgu = "INSERT INTO yazarbilgileri (YazarAdi, YazarSoyad, YazarURL)
            VALUES ('$YazarAdi', '$YazarSoyad', '$YazarURL')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
        echo  $islemSonuc;
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
    }


    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>MySQL-PHP Kitap Ekle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="yazarekle.php">Yeni bir kitap ekle!</a></p>
         <p><a href="index.php">Anasayfaya dön...</a></p>
    </body>
</html>
