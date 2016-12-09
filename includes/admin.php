<?php


      if($_SESSION['zalogowany']!=true)
      {
            header("Location:http://localhost/?url=admin"); 
      }

?>
<div class="jumbotron">
<h2><i class="glyphicon glyphicon-pencil"></i> Dodawanie News'a</h2>
<form action="" method="post" enctype="multipart/form-data" >
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-12 col-form-label text-center">Nagłówek</label>
        <div class="col-xs-3"></div>
        <div class="col-xs-6">
            <input class="form-control" maxlength="30" name="article-head">
        </div>
        <div class="col-xs-3"></div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-12 col-form-label text-center">Treść artykułu</label>
        <div class="col-xs-12">
            <textarea class="form-control" rows="15" cols="15" name="article-content"></textarea>
        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-12 col-form-label text-center"><i class="glyphicon glyphicon-user"></i> Autor</label>
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
            <input class="form-control"  name="autor">
        </div>
        <div class="col-xs-4"></div>
    </div>
    <div class="form-group row">
          <div class="col-xs-4"></div>
          <div class="col-xs-4">
                <input class="form-control" type="file"  name="plik">
          </div>
          <div class="col-xs-4"></div>
    </div>
    <button class="btn btn-primary center-block" name="submit-article" type="submit">Dodaj artykuł</button>      
</form>
<?php

      if(isset($_POST['submit-article']))
      {   
       $header=$_POST['article-head'];
       $content=$_POST['article-content'];
       $autor=$_POST['autor'];

       $plik=$_FILES['plik'];
       $plik_tmp = $_FILES['plik']['tmp_name'];
       $plik_nazwa = $_FILES['plik']['name']; 
       if(is_uploaded_file($plik_tmp))
       {       
             move_uploaded_file($plik_tmp, "upload/$plik_nazwa"); 
             $img_src="upload/$plik_nazwa";
       }
       else
       {
             echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong> wrzucono pliku.
              </div>";
       }
       require_once 'includes/dbconnect.php';

       $polaczenie=mysql_connect($host,$db_user,$db_password) 
             or 
             die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
       $db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error()); 

       $query = "INSERT INTO `news` (`id`, `nazwa`, `data`, `autor`, `tresc`,`img`) VALUES (NULL, '$header', '2016-12-14 00:00:00', '$autor', '$content','$img_src')";
       if(mysql_query($query))
       {
             echo "<br><br><div class='alert alert-success'>
                 <strong>Sukcess!</strong> Dodano artykuł.
                </div>";

       }
       else
       {
             echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong> Nie dodano artykułu.
              </div>";

       }
      }   


?>
</div>