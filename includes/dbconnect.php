<?php
      $host = 'localhost';
      $db_user = 'root';
      $db_password = '';
      $db_name = 'biblioteka';
      $polaczenie = new mysqli($host,$db_user,$db_password,$db_name);
      if($polaczenie->connect_errno!=0)
      {
            echo 'polacznie nie powiodlo sie'.$polacznie->connect_errno.$polacznie->connect_error;
            $polaczenie->close();
      }
?>