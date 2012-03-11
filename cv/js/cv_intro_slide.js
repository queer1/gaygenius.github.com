CvIntroSlide = {
    displayStatement: function() {
        var stmt1 = $('.intro .statement1');
        if (stmt1.is(':visible')) {
            return;
        }
        var step5 = function() {
            $('.intro h1').animate({'margin-left': '-200px'});
        }
        var step4 = function() {
            $('.intro li span').addClass('bold');
            $('.intro li').animate({'margin-left': '+50px'}, step5);
        }
        var step3 = function() {
            $('.intro li').fadeIn(step4);
        };
        var step2 = function() {
            $('.intro .statement2').addClass('bold');
            $('.intro .statement3').fadeIn('slow', step3);
        };
        stmt1.fadeIn('slow', step2);
    }
};