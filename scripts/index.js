$(document).ready(function(){
    $(window).scroll(function(){
            let step = 100;
                let x = 1;
                let y = 1;
                let z = 1;
                if ($(window).scrollTop() > 0 && $(window).scrollTop() < 500){
                    x = 0;
                    y = 0 + $(window).scrollTop();
                    z = 255;
                }
                let param = 'rgb('+x+', '+y+', '+z+')';
                $("#board").css('color', param);

        });
});