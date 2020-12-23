<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglantı.php");

    // Güncelleme işlemi sorgusu
    $YazarNo = mysqli_real_escape_string($baglanti, $_POST['YazarNo']);
    $YazarAdi = mysqli_real_escape_string($baglanti, $_POST['YazarAdi']);
    $YazarSoyad = mysqli_real_escape_string($baglanti, $_POST['YazarSoyad']);
    $yayineviAdi = mysqli_real_escape_string($baglanti, $_POST['YazarURL']);
    $sorgu = "UPDATE yazarbilgileri SET YazarAdi = '$YazarAdi', YazarSoyad = '$YazarSoyad', YazarURL = '$YazarURL' WHERE YazarNo = $YazarNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>Yazar Güncelle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Yazar Güncelle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="index.php">Anasayfaya dön...</a></p>
    </body>
</html>