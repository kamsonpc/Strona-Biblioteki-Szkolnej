<?php
if(isset($_POST['logout']))
{
      $_SESSION['zalogowany']=false;
}
?>

<?php


if($_SESSION['zalogowany']!=true)
{
      header("Location:http://localhost/?url=admin"); 
}

?>
<div class="row">
      <br>
      <br>
      <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="http://localhost/?url=admin-articles" class="btn btn-primary col-md-12">Artykuły</a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="http://localhost/?url=admin-folder" class="btn btn-success col-md-12">Teczki</a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
            <form action="" method="post">
                  <button class="btn btn-danger col-md-12" type="submit" name="logout">Wyloguj się </button>
            </form>
      </div>
</div>
<br>
<br>
<?php

if(isset($_POST['folder-submit']))
{
      require_once 'includes/dbconnect.php';

      $polaczenie=mysql_connect($host,$db_user,$db_password) 
            or 
            die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
      $db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error()); 
      $name = $_POST['folder-name'];
      $content = $_POST['folder-content'];
      
      $query = "INSERT INTO `folder` (`id_folder`, `name`, `content`) VALUES (NULL,'$name','$content')";
      if(mysql_query($query))
      {
            echo "<br><br><div class='alert alert-success'>
                       <strong>Sukcess!</strong> Dodano Teczki.
                      </div>";

      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
                    <strong>Bład!</strong> Nie dodano teczek.
                    </div>";

      }
}
?>
<div class="jumbotron">
      <h2><i class="glyphicon glyphicon-pencil"></i> Dodawanie Teczek Tematycznych</h2>
      <form action="" method="post" enctype="multipart/form-data" >
            <div class="form-group row">
                  <label for="example-text-input"  class="col-xs-12 col-form-label text-center">Nazwa</label>
                  <div class="col-xs-3"></div>
                  <div class="col-xs-6">
                        <input class="form-control" placeholder="np.10/2010r." maxlength="30" name="folder-name">
                  </div>
                  <div class="col-xs-3"></div>
            </div>
            <div class="form-group row">
                  <label for="example-text-input" class="col-xs-12 col-form-label text-center">Zawartość</label>
                  <div class="col-xs-12">
                        <textarea class="form-control" rows="15" cols="15" name="folder-content"></textarea>
                  </div>
            </div>
            <button class="btn btn-primary center-block" name="folder-submit" type="submit">Dodaj Teczkę</button>      
      </form>
</div>
