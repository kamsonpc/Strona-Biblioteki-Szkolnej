$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(window).scroll(function(){
        if ($(this).scrollTop() > 900) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            } 
        
    });
    $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 900);
            return false;
    });
     $('#back-to-top').tooltip('show');
});