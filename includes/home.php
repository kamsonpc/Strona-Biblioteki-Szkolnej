<div class="jumbotron">
    <h2><i class="glyphicon glyphicon-list-alt"></i>  O naszej bibliotece!</h2> 
    <p>
        Nasi czytelnicy mają do dyspozycji pomieszczenie biblioteczne, w którym znajduje się :
        <ul>
            <li>czytelnia </li>
            <li>wypożyczalnia</li>
            <li>pracownia multimedialna </li>
            <li> 12 stanowisk komputerowych z dostępem do sieci Internet</li>
            <li>projektor multimedialny oraz wieża umożliwiająca odsłuchiwanie plików audio</li>
        </ul>
    Zbiory opracowywane są w systemie MOL, według Uniwersalnej Klasyfikacji Dziesiętnej.<br> Daje to możliwość sprawniejszej obsługi czytelników.<br><br>
    Nasz księgozbiór liczy obecnie około <b>15 tys.</b> pozycji.
    </p> 
</div>

   <h2><i class="glyphicon glyphicon-globe"></i> Biblioteczne News'y</h2>
<?php
    require_once 'includes/dbconnect.php';

    $polaczenie=mysql_connect($host,$db_user,$db_password) 
        or 
        die("Niepowodzenie polaczenia"."<br>"."Error".mysql_error());
    $db=mysql_select_db($db_name,$polaczenie) or die('Nie mogę połączyć się z bazą danych<br />Błąd: '.mysql_error()); ;

    $query = mysql_query("select * from news order by id desc");
    $news="";
    while($rekord = mysql_fetch_array($query))
    {   
            
        $news .= '<div class="article">
            <div class="article-header">
            <div class="row">
            <div class="col-md-3 col-sm-hidden col-xs-3 article-other"><div class="hidden-sm hidden-xs"><i class="glyphicon glyphicon-calendar"></i> '.substr($rekord[2],0,10).'</div></div>
            <div class="col-md-6 col-sm-6 col-xs-6 article-h"> '.$rekord[1].'</div>
            <div class="col-md-3 col-sm-3 col-xs-3 article-other"><i class="glyphicon glyphicon-user"></i>  '.$rekord[3].'</div>
            </div>
            </div>
            <div class="article-text">
            <img class="img-responsive center-block" src='.$rekord[5].'>
            <br>
            '.$rekord[4].'
            </div>
            </div>'; 
    }
    echo $news;
?>   
    