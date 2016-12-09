<?php


if($_SESSION['zalogowany']!=true)
{
      header("Location:http://localhost/?url=admin"); 
}

?>
<div class="row">
<br>
<br>
<div class="col-md-6 col-sm-6 col-xs-12">
      <a href="http://localhost/?url=admin-articles" class="btn btn-primary col-md-12">Dodaj Artykuł</a>
</div>
      <div class="col-md-6 col-sm-6 col-xs-12">
            <a href="http://localhost/?url=admin-folder" class="btn btn-success col-md-12">Dodaj Teczki Tematyczne</a>
      </div>

</div>