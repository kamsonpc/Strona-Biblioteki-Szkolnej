<?php
include_on('includes/panel.php');


if(isset($_POST['folder-submit']))
{
      include('includes/dbconnect.php');
      $name = $_POST['folder-name'];
      $content = $_POST['folder-content'];
      
      $query = "INSERT INTO `folder` (`id_folder`, `name`, `content`) VALUES (NULL,'$name','$content')";
      if($polaczenie->query($query))
      {
            echo "<br><br><div class='alert alert-success'>
                       <strong>Sukcess!</strong> Dodano Teczki.
                      </div>";
            $polaczenie->close();

      }
      else
      {
            echo "<br><br><div class='alert alert-danger'>
                    <strong>Bład!</strong> Nie dodano teczek.
                    </div>";
            $polaczenie->close();

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
