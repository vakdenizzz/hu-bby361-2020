<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglantı.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazarbilgileri");
?>
<html>
    <head>
        <title>Yazar Listesi</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Yazar Listesi</h1>
        <p><a href="yazarekle.php">Yeni bir yazar ekle!</a></p>
        <?php
            echo("<table border=1 width=80%>");
                echo("<tr>");
                    echo("<td><b>Yazar ID</b></td>"); 
                    echo("<td><b>Yazar Adı</b></td>");
                    echo("<td><b>Yazar Soyadı</b></td>");
                    echo("<td><b>YazarURL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["YazarNo"]."</td>");               
                echo("<td>".$satir["YazarAdi"]."</td>");
                echo("<td>".$satir["YazarSoyad"]."</td>");
                echo("<td>".$satir["YazarURL"]."</td>");
                echo("<td><a href='güncel.php?YazarNo=".$satir["YazarNo"]."'>Günceller misin ?</a></td>");
                echo("<td><a href='silme.php?YazarNo=".$satir["YazarNo"]."'>Siler misin ?</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>
</html>