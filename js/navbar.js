$(document).ready(function()
{
    $( "ul.nav>li.menu" ).hover(
  function() {
    $( this ).addClass( "active_li" );
  }, function() {
    $( this ).removeClass( "active_li" );
  }
);    
    
});