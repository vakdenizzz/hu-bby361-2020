
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

<div class="row">
                <div class="col-lg12 col-md-12 col-sm-12">
                    <h2 class="text-danger">İletişim</h2> 
                    <form>
                        <div class="form-group">
                          <label for="ad">Ad:</label>
                          <input type="text" class="form-control" id="ad">
                          <label for="soyad">Soyad:</label>
                          <input type="password" class="form-control" id="soyad">
                          <label for="mail">E-Posta:</label>
                          <input type="text" class="form-control" id="mail">
                          <label for="yorum">Mesaj:</label>
                          <textarea class="form-control" rows="5" id="yorum"></textarea>
                          <button type="button" class="btn btn-success">Success</button>
                        </div>
                    </form>
                </div>
            </div>
 <div id="icerik" class="container text-center p-2 my-3 bg-white border border-secondary"> 
            <h3>Volkan AKDENİZ </h3>
            <hr class="w-25">
            <i><p>v.akdenizzz@gmail.com</p>
            </i>
            <hr class="w-25">
            <p>Suvari mah.9388sok.323 <br> Etimesgut Ankara</p>
            <hr class="w-25">
            <p>553-084-00000</p>
            
            <hr>
        </div> 

</div>
      
  

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>