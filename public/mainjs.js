$(document).ready(function(){
    $('.mini-logo').hide()
})

$(document).ready(function(){
    var shrinkOn = 100;

    $(window).scroll(function(){
    var offy = $('header').offset().top;

        if(offy > shrinkOn){
            $('.logo').hide("slow");
            $('.mini-logo').show("slow");
        } 
        else {
        $('.logo').show("slow");
        $('.mini-logo').hide("slow");
        }
    }); 
 });

$(document).ready(function(){
    $("#dialog1").hide();
    $("#plan1").click(function(){
        $("#dialog1").dialog();
    })
});

$(document).ready(function(){
    $("#dialog2").hide();
    $("#plan2").click(function(){
        $("#dialog2").dialog();
    })
});

$(document).ready(function(){
    $("#dialog3").hide();
    $("#plan3").click(function(){
        $("#dialog3").dialog();
    })
});



