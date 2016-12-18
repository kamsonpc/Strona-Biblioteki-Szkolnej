<?php
$selected_id=$_GET['id'];
require_once 'includes/dbconnect.php';
$polaczenie=mysql_connect($host,$db_user,$db_password) 
      or 
      die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
$db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error()); 
$query ="SELECT * FROM `books` WHERE id_book=$selected_id";
$result = mysql_query($query);
$book="";
while($rekord = mysql_fetch_array( $result ))
{  
      $book .= "<div class='jumbotron'>
                <h2>$rekord[1]</h2>
                <img class='img-responsive center-block' src='$rekord[4]'>
                <br>
                $rekord[3];
                </div>";
}
echo $book;

?>