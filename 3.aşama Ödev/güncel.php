<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglantı.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["YazarNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazarbilgileri WHERE YazarNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu)
?>

<html>
    <head>
        <title>Yazar Güncelle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Yazar Güncelle</h1>
        <form action="engüncel.php" method="post">
            Kitap Adı: <input type="text" value="<?php echo $satir["YazarAdi"] ;?>" name="YazarAdi"><br>
            Yazar Adı: <input type="text" value="<?php echo $satir["YazarSoyad"] ;?>" name="YazarSoyad"><br>
            Yayınevi: <input type="text" value="<?php echo $satir["YazarURL"] ;?>" name="YazarURL"><br>
            <input type="hidden" value="<?php echo $satir["YazarNo"] ;?>" name="YazarNo">
            <input type="submit" value="Kaydı Güncelle">
        </form>
    </body>
</html>