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
            <a href="http://localhost/?url=admin-articles" class="btn btn-primary col-md-12">Dodaj Artykuł</a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="http://localhost/?url=admin-folder" class="btn btn-success col-md-12">Dodaj Teczki Tematyczne</a>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
      <form action="" method="post">
            <button class="btn btn-danger col-md-12" type="submit" name="logout">Wyloguj się </button>
      </form>
      </div>
      </div>