<?php
include("includes/panel.php");
?>
<div class="jumbotron">
<h2>Aktulane Nowości:</h2>
<form action="" method="post">
      <div class="table-responsive">
            <table class="table">
                  <tr>
                        <th>ID</th>
                        <th>Nazwa</th>
                        <th>Autor</th>
                  </tr>

<?php
require_once 'includes/dbconnect.php';

$polaczenie=mysql_connect($host,$db_user,$db_password) 
      or 
      die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
$db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error());     
$query = "SELECT * FROM `books`";
$books_list="";
     $result = mysql_query($query);
      while($rekord = mysql_fetch_array( $result ))
      {  
            $books_list .= '<tr><td><input name='.$rekord[0].' type="checkbox" name="check_list[]" value=""></td><td>'.$rekord[1].'</td><td>'.$rekord[2].'</td></tr>';
      }
      echo $books_list;
mysql_close($polaczenie);
?>
                  
            </table>
      </div>
<button class="btn btn-danger col-md-12" type="submit" name="delete">Usuń wybrane</button>
</form>
</div>
<?php
if(isset($_POST['delete']))
{
      require_once 'includes/dbconnect.php';

      $polaczenie=mysql_connect($host,$db_user,$db_password) 
            or 
            die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
      $db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error());     
      foreach ($_POST as $name => $value)
      {     if($name !='delete')
            {
            $sql = "DELETE FROM `books` WHERE id_book=$name";
            mysql_query($sql);
            }
           
      }
      mysql_close($polaczenie);
      header('Location: '.$_SERVER['REQUEST_URI']);
}
?>
<?php
if(isset($_POST['submit-book']))
{     
      $form_is_ready=true;
      $name=$_POST['book-name'];
      $describe=$_POST['book-describe'];
      $autor=$_POST['book-author'];
      if($autor=="")
      {
            $autor="Nieznany";
      }
      $plik=$_FILES['plik'];
      $plik_tmp = $_FILES['plik']['tmp_name'];
      $plik_nazwa = $_FILES['plik']['name']; 
      @$check=getimagesize($_FILES['plik']['tmp_name']);
      if($check !== false)
      {
            //echo "Wybrany plik jest zdjęciem - " . $check["mime"] . ".";

      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong> Plik nie jest zdjeciem.
              </div>";
            $form_is_ready=false;
      }
      if($_FILES['plik']['size']>500000)
      {
            $form_is_ready=false;
            echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong> Plik za duży.
              </div>";
      }
      if(is_uploaded_file($plik_tmp)&&($form_is_ready==true))
      {       
            move_uploaded_file($plik_tmp, "img/books/$plik_nazwa"); 
            $img_src="img/books/$plik_nazwa";
      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong>Nie wrzucono pliku.
              </div>";
      }
      require_once 'includes/dbconnect.php';

      $polaczenie=mysql_connect($host,$db_user,$db_password) 
            or 
            die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
      $db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error());     
      @$query = "INSERT INTO `books` (`id_book`, `name`, `author`, `describe`,`img_src`) VALUES (NULL, '$name', '$autor', '$describe','$img_src')";

      if($form_is_ready==true)
      {
            if(mysql_query($query))
            {
                  echo "<br><br><div class='alert alert-success'>
                       <strong>Sukcess!</strong> Dodano książke.
                      </div>";

            }
      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
                    <strong>Bład!</strong> Nie dodano książki.
                    </div>";

      }
}   
?>
<div class="jumbotron">
      <h2><i class="glyphicon glyphicon-pencil"></i>Dodawanie Nowości</h2>
      <form action="" method="post" enctype="multipart/form-data" >
            <div class="form-group row">
                  <label for="example-text-input" class="col-xs-12 col-form-label text-center">Nazwa Książki:</label>
                  <div class="col-xs-3"></div>
                  <div class="col-xs-6">
                        <input class="form-control" maxlength="30" name="book-name">
                  </div>
                  <div class="col-xs-3"></div>
            </div>
            <div class="form-group row">
                  <label for="example-text-input" class="col-xs-12 col-form-label text-center"><i class="glyphicon glyphicon-user"></i> Autor Książki</label>
                  <div class="col-xs-4"></div>
                  <div class="col-xs-4">
                        <input class="form-control"  name="book-author">
                  </div>
                  <div class="col-xs-4"></div>
            </div>
            <div class="form-group row">
                  <label for="example-text-input" class="col-xs-12 col-form-label text-center">Opis:</label>
                  <div class="col-xs-12">
                        <textarea class="form-control" rows="15" cols="15" name="book-describe"></textarea>
                  </div>
            </div>
            <div class="form-group row">
                  <div class="col-xs-4"></div>
                  <div class="col-xs-4">
                        <input class="form-control" type="file"  name="plik">
                  </div>
                  <div class="col-xs-4"></div>
            </div>
            <button class="btn btn-primary center-block" name="submit-book" type="submit">Dodaj Książke</button>      
      </form>
</div>