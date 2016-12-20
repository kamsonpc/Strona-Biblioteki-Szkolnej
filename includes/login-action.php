<?php

            session_start();
            include('dbconnect.php');
            $login  = $_POST['login'];
            $password = $_POST['password'];
            $query_s="SELECT * FROM users WHERE login='$login' AND password='$password'";
            if($rezultat=$polaczenie->query($query_s))
            {     $rows = $rezultat->num_rows;
                   if($rows!=0)
                   {    
                         $_SESSION['zalogowany']=true;
                         header("Location:http://localhost/?url=admin-articles"); 

                   }
                   else
                   {
                         $_SESSION['login_e']="<div class='alert alert-danger'>
                                                <strong>Nie zalogowano</strong>.
                                                </div>";
                         header("Location:http://localhost/?url=admin"); 
                   }
            }
            else
            {
                  $_SESSION['login_e']="<div class='alert alert-danger'>
                                  <strong>Nie zalogowano</strong>.
                                  </div>";
            }
            $rezultat->close();
            $polaczenie->close();
?>
