(function ($) {

    $(window).resize(function () {
        var headHeight = $('#head_block>.container').height();
        if (headHeight > 110) {
            headHeight = 110;
        }
        
        $('.logo-col .logo').height(headHeight);
        
        var containerWidth = $('.container').width();
        var screenWidth = $(window).width();
        if (screenWidth - containerWidth < 80 * 2) {
            $('#nav_prod').css('left', 0);
        } else {
            $('#nav_prod').css('left', -85);
        }
    }).resize();
    
    function menuItemMinHeight() {
        var miMaxHeight = -1;
        var listMenus = $('#cl_menu ul.menu>li').slice(0, 3).removeAttr('style');
        listMenus.each(function (index) {
            if ($(this).height() > miMaxHeight) {
                miMaxHeight = $(this).height();
            }
        });
        listMenus.each(function () {
           $(this).height(miMaxHeight); 
        });
    }
    
    var elCollapseMenu = $('#cl_menu');
    var btnCollapseMenu = $('.pl-btn-menu');
    $('.pl-btn-menu, #cl_menu').on('mouseenter', function () {
        if ($(window).width() >= 768) {
            elCollapseMenu.addClass('cl_show');
            btnCollapseMenu.addClass('cl_show');
        }
        if ($(window).width() >= 600) {
            menuItemMinHeight();
        }
    });
    $('.pl-btn-menu, #cl_menu').on('mouseleave', function () {
        if ($(window).width() >= 768) {
            elCollapseMenu.removeClass('cl_show');
            btnCollapseMenu.removeClass('cl_show');
        }
    });

    var topNav = $('#top-menu');
    $('.pl-btn-menu').on('click touch', function () {
        var openIcon = 'fa-bars';
        var closeIcon = 'fa-close';
        if ($(window).width() < 768) {
            if (elCollapseMenu.hasClass('cl_show')) {
                elCollapseMenu.removeClass('cl_show');
                $(this).find('span').removeClass(closeIcon).addClass(openIcon);
            } else {
                elCollapseMenu.addClass('cl_show');
                $(this).find('span').removeClass(openIcon).addClass(closeIcon);
            }
//            if (topNav.hasClass('nav-fixed')) {
//                topNav.removeClass('nav-fixed');
//                if (elCollapseMenu.hasClass('cl_show')) {
//                    elCollapseMenu.removeClass('cl_show');
//                }
//                $(this).find('span').removeClass(closeIcon).addClass(openIcon);
//            } else {
//                topNav.addClass('nav-fixed');
//                if (elCollapseMenu.hasClass('cl_show')) {
//                    
//                } else {
//                    elCollapseMenu.addClass('cl_show');
//                }
//                $(this).find('span').removeClass(openIcon).addClass(closeIcon);
//            }
        }
    });
    
    var offsetMenuTop = topNav.offset().top;
    var navProdScroll = $('#nav_prod');
    if (navProdScroll.length > 0) {
        var offsetNavProdTop = $('#nav_prod').offset().top - 30;
    }
    $(window).scroll(function () {
        if ($(window).scrollTop() >= offsetMenuTop) {
            topNav.addClass('nav-fixed');
        } else {
            topNav.removeClass('nav-fixed');
        }
        
        if (navProdScroll.length > 0) {
            if ($(window).scrollTop() >= offsetNavProdTop) {
                $('#nav_prod').css('top', $(window).scrollTop());
            } else {
                $('#nav_prod').css('top', 45);
            }
        }
    });
    
    $('#nav_prod a').on('click', function (e) {
        e.preventDefault();
       $(this).parent().find('a').removeClass('active');
       $(this).addClass('active');
       
       $('html, body').animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
    });

    $('.main-carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 225,
        itemMargin: 0,
        directionNav: false,
        asNavFor: '.main-slider'
    });

    $('.main-slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: ".main-carousel"
    });

    $('.slider-items').each(function (){
        var responsive = {
                0: {
                    items: 1,
                    center: true
                },
                600: {
                    items: 2,
                    center: true
                },
                992: {
                    items: 3,
                    center: true
                },
                1200: {
                    items: 5
                }
            };
        if ($(this).hasClass('cross-sells-items')) {
            responsive = {
                0: {
                    items: 1,
                    center: true
                },
                600: {
                    items: 2,
                    center: true
                },
                992: {
                    items: 3
                },
                1200: {
                    items: 4
                }
            };
        }
        $(this).owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            margin: 20,
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            responsiveClass: true,
            responsive: responsive
        });
    });
    
    $(document).ready(function () {
        if ($('.single').length > 0) {
            $('.post_content img').each(function () {
                var aTag = $(this).closest('a');
                if (aTag.length > 0) {
                    aTag.addClass('pl-fancybox').attr('rel', 'pl-group').attr('href', $(this).attr('src'));
                } else {
                    $(this).wrap('<a class="pl-fancybox" rel="pl-group" href="'+ $(this).attr('src') +'"></a>');
                }
            });

            $('.post_content .pl-fancybox').fancybox();
        }
    });

})(jQuery);

