// JavaScript Document

// Home Style



$(document).unload(function () {

    $(".loading-gif img").fadeIn(1000);
});

$(document).ready(function () {

    Scroll_Animation();
    Home_Page();
    Classes_Page();
    



    $("#Home-Panel").click(function () {


        $("html, body").stop().animate({ scrollTop: $(".Home-Page").offset().top }, 'slow')

    });

    $("#About-Panel").click(function () {


        $("html, body").stop().animate({ scrollTop: $(".About-Page").offset().top }, 'slow')

    });



    $("#Classes-Panel").click(function () {


        $("html, body").stop().animate({ scrollTop: $(".Classes-Page").offset().top }, 'slow')
    });




    $("#Services-Panel").click(function () {

        $("html, body").stop().animate({ scrollTop: $(".Services-Page").offset().top }, 'slow')

    });




    $("nav").hover(function () {

        $("nav").stop().animate({ marginLeft: '0px' }, 500);

    },
    function () {

        $("nav").stop().animate({ marginLeft: '-10%' }, 500);

    });



});




function Scroll_Animation() {

    $(document).scroll(function () {

        Home_Page();
        Services_Page();
        About_Page();
        Admin_Slider();


    });


}

function Home_Page() {

    var hT = $('.Home-Page').offset().top,
    hH = $('.Home-Page').outerHeight(),
    wH = $(window).height(),
    wS = $(this).scrollTop();
    if (wS == (hT + hH - wH)) {

        $(".Home-Page img").stop().animate({
            marginTop: '10%',
            marginRight: '0%',
            marginLeft: '10%',
            width: '80%',
            height: '70%'
        }, 'slow', function () {
            $(".Heading-Box").stop().animate({
                marginTop: '20%',
                marginLeft: '20%'
            }, 'slow',
                                        function () {
                                            $(".Heading-Box").animate({
                                                width: '50%',
                                                height: '20%'
                                            }, 'slow',
                                                                       function () {
                                                                           $(".Heading-Box h1 ,.Heading-Box p").slideDown('slow')
                                                                       })
                                        })

        });


    }

    else {

        $(".Home-Page img").stop().animate({
            marginTop: '-80%',
            marginRight: '-80%',
            marginLeft: '0%',
            width: '1%',
            height: '1%'
        }, 'slow', function () {
            $(".Heading-Box").animate({
                marginTop: '-80%',
                marginLeft: '-80%'
            }, 'slow',
                                       function () {
                                           $(".Heading-Box").animate({
                                               width: '1%',
                                               height: '1%'
                                           }, 'slow',
                                                                      function () {
                                                                          $(".Heading-Box h1 ,.Heading-Box p").slideUp('slow')
                                                                      })
                                       })
        });
    }



}




function About_Page() {

    var hT = $('.About-Page').offset().top,
    hH = $('.About-Page').outerHeight(),
    wH = $(window).height(),
    wS = $(this).scrollTop();
    if (wS == (hT + hH - wH)) {

        $(".Vision-Box").prev(this).stop().animate({ marginTop: '4vh', marginLeft: '10vh', opacity: '1', minWidth: '40%', minHeight: '90%' }, 'slow', function () {
            $(".Vision-Box").next(this).stop().animate({ marginTop: '4vh', marginLeft: '10vh', opacity: '1', minWidth: '40%', minHeight: '90%' }, 'slow')
        });

    }

    else {
        $(".Vision-Box").stop().animate({ marginTop: '100vh', marginLeft: '0vh', opacity: '0', minWidth: '0%', minHeight: '0%' }, 'slow');

    }

}

function Classes_Page() {



    $(".Classes-Page #h1_1").animate({ marginTop: '15vh', marginLeft: '36vh', opacity: '1', fontSize: '6vh' }, 1500, function () {
        $(".Classes-Page #P_1").animate({ marginTop: '30vh', marginLeft: '30vh', opacity: '1' }, 1500, function () {
            $(".Classes-Page #h1_1").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0', fontSize: '1vh' }, 1000, function () {
                $(".Classes-Page #P_1").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0' }, 1000, function () {
                    $(".Classes-Page #h1_2").animate({ marginTop: '15vh', marginLeft: '40vh', opacity: '1', fontSize: '6vh' }, 1500, function () {
                        $(".Classes-Page #P_2").animate({ marginTop: '30vh', marginLeft: '30vh', opacity: '1' }, 1500, function () {
                            $(".Classes-Page #h1_2").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0', fontSize: '1vh' }, 1000, function () {
                                $(".Classes-Page #P_2").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0' }, 1000, function () {
                                    $(".Classes-Page #h1_3").animate({ marginTop: '15vh', marginLeft: '40vh', opacity: '1', fontSize: '6vh' }, 1500, function () {
                                        $(".Classes-Page #P_3").animate({ marginTop: '30vh', marginLeft: '30vh', opacity: '1' }, 1500, function () {
                                            $(".Classes-Page #h1_3").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0', fontSize: '1vh' }, 1000, function () {
                                                $(".Classes-Page #P_3").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0' }, 1000, function () {
                                                    $(".Classes-Page #h1_4").animate({ marginTop: '15vh', marginLeft: '40vh', opacity: '1', fontSize: '6vh' }, 1500, function () {
                                                        $(".Classes-Page #P_4").animate({ marginTop: '30vh', marginLeft: '30vh', opacity: '1' }, 1500, function () {
                                                            $(".Classes-Page #h1_4").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0', fontSize: '1vh' }, 1000, function () {
                                                                $(".Classes-Page #P_4").animate({ marginTop: '0vh', marginLeft: '0vh', opacity: '0' }, 1000, function () { setTimeout(Classes_Page) })

                                                            })
                                                        })
                                                    })
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    });


}







function Services_Page() {

    var hT = $('.Services-Page').offset().top,
    hH = $('.Services-Page').outerHeight(),
    wH = $(window).height(),
    wS = $(this).scrollTop();
    if (wS >= (hT + hH - wH)) {
        $(".Services-Page h1").stop().animate({ opacity: '1', fontSize: "9vh" }, 'slow', function () {
            $(".Services-Page .box").stop().animate({ marginLeft: '10vh', marginTop: '2vh', width: '50%', height: '50vh', opacity: '1' }, 'slow', function () {
                $(".box img").stop().animate({ opacity: '1' }, 'slow', function () {
                    $(".box .para").stop().animate({ opacity: '1' }, 'slow', function () {
                        $(".Services-Page #Child_img").stop().animate({ marginLeft: '5vh', marginTop: '2vh', width: '50vh', height: '50vh', opacity: '1' }, 1500, function () {
                            $(".line-Nav").animate({ opacity: '1', width: '80vh', height: '5vh' }, 1000)
                        })
                    })
                })
            })
        });
    }

    else {
        $(".Services-Page h1").stop().animate({ opacity: '0', fontSize: "1vh" }, 'fast', function () {
            $(".Services-Page .box").stop().animate({ marginLeft: '10vh', marginTop: '0vh', width: '0%', height: '0vh', opacity: '0' }, 'fast', function () {
                $(".Services-Page #Child_img").stop().animate({ marginLeft: '-100vh', marginTop: '0', width: '0', height: '0', opacity: '0' }, 'fast', function () {
                    $(".box img").stop().animate({ opacity: '0' }, 'fast', function () {
                        $(".box .para").stop().animate({ opacity: '0' }, 'fast', function () {
                            $(".line-Nav").animate({ opacity: '0', width: '0', height: '0' }, 'fast')
                        })
                    })
                })
            })
        })
    }



    $(".Services-Page #Child_img").hover(function () {

        $(".Services-Page h3").stop().animate({ opacity: '1' }, 'slow');


    },
	function () {
	    $(".Services-Page h3").stop().animate({ opacity: '0' }, 'slow');

	});


    $("#home").click(function () {

        $("html, body").stop().animate({ scrollTop: $(".Home-Page").offset().top }, 3000);

    });

    $("#contact").click(function () {
        $(".Line-Nav-Div").slideDown(1000);
        $(".contact").slideDown(1000);



        $(".contact .close").click(function () {
            $(".contact").slideUp(1000);
            $(".Line-Nav-Div").slideUp(1000);
        });


    });



    $("#our_teacher").click(function () {

        $(".Line-Nav-Div").slideDown(1000);
        $(".Our-Teachers").slideDown(1000,Teacher_Slider);
    });



    $(".Our-Teachers .close").click(function () {

        $(".Line-Nav-Div").slideUp(1000);
        $(".Our-Teachers").slideUp(1000);
    });



    $("#Comments").click(function () {

        $(".Line-Nav-Div").slideDown(1000);
        $(".Comments").slideDown(1000);
    });


    $(".Comments .close").click(function () {

        $(".Line-Nav-Div").slideUp(1000);
        $(".Comments").slideUp(1000);
    });


    $("#Admin").click(function () {

        $(".Line-Nav-Div").slideDown(1000);
        $(".Admin").slideDown(1000);

    });


    $(".Admin .close").click(function () {

        $(".Line-Nav-Div").slideUp(1000);
        $(".Admin").slideUp(1000);
    });



}



function Teacher_Slider()
{
    
    $("#teacher-slider-img-1").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-1").animate({opacity:'0'},500,function(){$("#teacher-slider-img-2").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-2").animate({opacity:'0'},500,function(){$("#teacher-slider-img-3").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-3").animate({opacity:'0'},500,function(){$("#teacher-slider-img-4").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-4").animate({opacity:'0'},500,function(){$("#teacher-slider-img-5").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-5").animate({opacity:'0'},500,function(){$("#teacher-slider-img-6").animate({opacity:'1'},5000,function(){$("#teacher-slider-img-6").animate({opacity:'0'},500,Teacher_Slider())
    })
    })
    })
    })
    })
    })
    })
    })
})
})
})

    



}





















function Admin_Slider()
{

    $("#Admin-Pic-1").animate({opacity:'1'},6000,
       
        function(){$("#Admin-Pic-1").animate({opacity:'0'},1000,
            
            function(){$("#Admin-Pic-2").animate({opacity:'1'},6000,
              
                function(){$("#Admin-Pic-2").animate({opacity:'0'},1000,
                    
                    function(){$("#Admin-Pic-3").animate({opacity:'1'},6000,
                     
                        function(){$("#Admin-Pic-3").animate({opacity:'0'},Admin_Slider())
    
    
    
                        })
                    })
                })
            })
        })


    

}
