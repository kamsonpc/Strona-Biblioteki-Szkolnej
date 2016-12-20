
<div class="jumbotron"><h2><i class="glyphicon glyphicon-user"></i> Zaloguj się do panelu Administratora</h2>
<br>
<br>
<form action="includes/login-action.php" method="post"  >
      <div class="form-group row">
            <label for="example-text-input" class="col-xs-12 col-form-label text-center">Login</label>
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                  <input class="form-control" maxlength="30" name="login">
            </div>
            <div class="col-xs-4"></div>
      </div>
      <div class="form-group row">
            <label for="example-text-input" class="col-xs-12 col-form-label text-center">Hasło</label>
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                  <input class="form-control" type="password"  name="password">
            </div>
            <div class="col-xs-4"></div>
      </div>

      <button class="btn btn-primary center-block" name="submit" type="submit">Zaloguj</button>   
      <br>   
      <br>   
</form>
<?php
if(isset($_SESSION['login_e']))
{
      echo $_SESSION['login_e'];
}
?>
</div>
