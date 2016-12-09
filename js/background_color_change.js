var state=false;
jQuery(function($)
{
$('ul.navbar-nav>li').hover(function()
{  
	if(state==false)
	{
	$(this).animate({
          fontSize:"26px"},200);
			state=true;
	}
	else{
		$(this).animate({
          fontSize: "24px"},200);
		  state=false;
						}
}
);
});