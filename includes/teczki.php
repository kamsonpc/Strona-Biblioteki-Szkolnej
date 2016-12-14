
<?php
require_once 'includes/dbconnect.php';

$polaczenie=mysql_connect($host,$db_user,$db_password) 
or 
die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
$db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error()); 

$query = mysql_query("SELECT * FROM `folder`");
$folder="<div class='folder jumbotron'><h2>Teczki Tematyczne 'Cogito'</h2></div>";
while($rekord = mysql_fetch_array($query))
{   
 $folder .= '<div class="folder jumbotron">
      <div class="folder-header">
            <h2 class="f-header">'.$rekord[1].'</h2>      
      </div>
      <div class="folder-text">
      '.$rekord[2].'
      </div>
      </div>'; 
}
echo $folder;
?>