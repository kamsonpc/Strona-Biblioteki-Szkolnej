<?php
      include_once('includes/panel.php');
?>
<div class="jumbotron">
      <h2>Aktulane Artykuły:</h2>
      <form action="" method="post">
            <div class="table-responsive">
                  <table class="table">
                        <tr>
                              <th>ID</th>
                              <th>Nagłówek</th>
                              <th>Autor Artyukułu</th>
                              <th>Data</th>
                        </tr>

<?php
include('includes/dbconnect.php');    
$query = "SELECT * FROM `news`";
$article_list="";
$result = $polaczenie->query($query);
while($rekord = $result->fetch_array())
{  
      $article_list .= '<tr><td><input name='.$rekord[0].' type="checkbox" name="check_list[]" value=""></td><td>'.$rekord[1].'</td><td>'.$rekord[3].'</td><td>'.$rekord[2].'</td></tr>';
}
echo $article_list;
$result->close();
$polaczenie->close();
?>

</table>
</div>
<button class="btn btn-danger col-md-12" type="submit" name="delete">Usuń wybrane</button>
</form>
</div>
<?php
if(isset($_POST['delete']))
{
      include('includes/dbconnect.php');
      foreach ($_POST as $name => $value)
      {     if($name !='delete')
            {
            $query = "DELETE FROM `news` WHERE id=$name";
            $polaczenie->query($sql);
            }
      }
      $polaczenie->close();
}
if(isset($_POST['submit-article']))
{     $form_is_ready=true;
      $header=$_POST['article-head'];
      $content=$_POST['article-content'];
      $autor=$_POST['autor'];
      if($autor=="")
      {
            $autor="Admin";
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
            move_uploaded_file($plik_tmp, "upload/$plik_nazwa"); 
            $img_src="upload/$plik_nazwa";
      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
              <strong>Bład!</strong>Nie wrzucono pliku.
              </div>";
      }
      include('includes/dbconnect.php');
      $date = date("Y-m-d");      

      $query = "INSERT INTO `news` (`id`, `nazwa`, `data`, `autor`, `tresc`,`img`) VALUES (NULL, '$header', '$date', '$autor', '$content','$img_src')";
      
       if($form_is_ready==true)
       {
            if($polaczenie->query($query))
            {
                  echo "<br><br><div class='alert alert-success'>
                       <strong>Sukcess!</strong> Dodano artykuł.
                      </div>";
                  $polaczenie->close();

            }
      }
      else
      {
                  echo "<br><br><div class='alert alert-danger'>
                    <strong>Bład!</strong> Nie dodano artykułu.
                    </div>";
                   $polaczenie->close();

      }
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

</div>