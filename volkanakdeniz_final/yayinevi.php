<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yayinevi");
?>
<!doctype html>
<html>
 <head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link href="stil.css" rel="stylesheet">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 <title>FİNAL UYGULAMASI</title>
   <style>

  .navbar {
    padding-top: 10px;
    padding-bottom: 10px;
    border: 0;
    border-radius: 15px;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
	background:moccasin;
	
  }
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
   </style>
  </head>
  
<body>
  
 <div class="container border border-dark bg-light ">
<nav id="menu" class="navbar navbar-expand-md bg-info  justify-content-center my-2 ">          
<ul class="navbar-nav text-center">
<li class="nav-item  bg-light rounded text-white p-1 m-1">
<a class="nav-link active text-dark" href="index.php">ANASAYFA</a>
</li>
<li class="nav-item  bg-light rounded text-white p-1 m-1">
<a class="nav-link active text-dark" href="kitap.php">KİTAP BİLGİLERİ</a>
</li>
<li class="nav-item  bg-light rounded text-white p-1 m-1">
<a class="nav-link active text-dark" href="yazar.php">YAZAR BİLGİLERİ</a>
</li>
<li class="nav-item  bg-light rounded text-white p-1 m-1">
<a class="nav-link active text-dark" href="yayinevi.php">YAYINEVİ BİLGİLERİ</a>
</li>
<li class="nav-item  bg-light  rounded text-white p-1 m-1">
<a class="nav-link active text-dark" href="iletisim.php">İLETİŞİM</a>
</li>
</ul>
</nav>

            
<main role="main" class="container text-center">
  <h1>Yayınevi Listesi</h1>
        <p><a href="yayineviekle.php">Yeni bir Yayınevi ekle!</a></p>
        <?php
            echo("<table border=1 width=80%>");
                echo("<tr>");
                    echo("<td><b>Yayınevi ID</b></td>"); 
                    echo("<td><b>Yayınevi Kayıt Tarihi</b></td>");
                    echo("<td><b>Yayınevi Adı</b></td>");
                    echo("<td><b>YazarURL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["YayineviNo"]."</td>");               
                echo("<td>".$satir["YayineviKayıtTarihi"]."</td>");
                echo("<td>".$satir["YayineviAdi"]."</td>");
                echo("<td>".$satir["YayineviUrl"]."</td>");
                echo("<td><a href='yagüncel.php?YayineviNo=".$satir["YayineviNo"]."'>Günceller misin ?</a></td>");
                echo("<td><a href='yasilme.php?YayineviNo=".$satir["YayineviNo"]."'>Siler misin ?</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
</main>
      <header class="masthead mb-auto"> 
   <hr class="bg-white">  
</header>
        
  </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>