<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglantı.php");

    /* Silme işlemi sorgusu */
    $silinecek = mysqli_real_escape_string($baglanti, $_GET["YazarNo"]);
    $sorgu = "DELETE FROM yazarbilgileri WHERE YazarNo = '$silinecek'";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla silindi";
    } else {
        $islemSonuc = "Kayıt silinirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>Kitap Sil</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Sil</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="index.php">Anasayfaya dön...</a></p>
    </body>
</html>