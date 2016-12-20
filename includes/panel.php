<?php
if(isset($_POST['logout']))
{
$_SESSION['zalogowany']=false;
}
if($_SESSION['zalogowany']!=true)
{     
header("Location:http://localhost/?url=admin"); 
}
?>
                  <div class="jumbotron">
                  <h2><i class="glyphicon glyphicon-list-alt"></i> PANEL ADMINISTRATORA</h2>
                        <br>
                        <br>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                              <a href="http://localhost/?url=admin-articles" class="btn btn-primary col-md-12">Artykuły</a>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                              <a href="http://localhost/?url=admin-folder" class="btn btn-success col-md-12">Teczki</a>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                              <a href="http://localhost/?url=admin-books" class="btn btn-warning col-md-12">Książki</a>
                        </div>
                        <br>
                        <br>
                        <div class="col-md-4 col-xs-4"></div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                              <form action="" method="post">
                                    <button class="btn btn-danger col-md-12" type="submit" name="logout">Wyloguj się </button>
                              </form>
                        </div>
                        <div class="col-md-4 col-xs-4"></div>
                        
                  </div>
