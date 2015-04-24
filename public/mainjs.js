$(function(){
    $('#header_nav').data('size','big');
});

$(window).scroll(function(){
    var $nav = $('#header_nav');
    if ($('body').scrollTop() > 0) {
        if ($nav.data('size') == 'big') {
            $nav.data('size','small').stop().animate({
                height:'40px'
            }, 350);
        }
    } else {
        if ($nav.data('size') == 'small') {
            $nav.data('size','big').stop().animate({
                height:'140px'
            }, 600);
        }  
    }
});

