$(function () {
    
//     window.onbeforeunload = function(){
//       return 'Are you sure you want to leave?';
//     };
////////// nav function //////////
    var openNav = 0;

    $("#openNav").click(function () {
        if (openNav == 0) {
            $("#sideNav").animate({"width": "40%"},200);
            openNav = 1;
        }
    });
    $("#closeBtn").click(function () {
        $("#sideNav").animate({"width": "0"},200);
        openNav = 0;
    });

////////////////////////////////////////////
    
//////////// scroll animation /////////////

    var doAnimation = function () {

        var offset = $(window).scrollTop() + $(window).height();
        $animatables = $('.anima');

        if ($animatables.length === 0) {
            $(window).off('scroll', doAnimation);
        }else{
            $animatables.each(function (i) {
                var $animatable = $(this);
                if (($animatable.offset().top + $animatable.height()) < offset + 100) {
                    $animatable.css({"opacity":"1","transform":"translate(0,0)"});
                    $animatable.removeClass('anima');
                }
            });
        }
        console.log($animatables.length);

    };

    $(window).on('scroll', doAnimation);
    $(window).trigger('scroll');
    
////////////////////////////////////////////
    
//////// click thumbnail, modalbox will show ////
    //// click thumbnail, modalbox will come out ////
    
    var imageInputBox=0;
//    subImages
    $('.portfolio-page').click(function(){
        
        $('#portTitle').text($('#workTitle'+$(this).data('id')).text());
        $('#fancyBoxShowImage').attr('href',$('#imagePort'+$(this).data('id')).attr('src'));
//        console.log($('#subImage'+$(this).data('id')).val());
        
        $('#subImages').html('');
        $('#portfolioEmbed').html('');
        
        $('#subImages').append('<img class="showImageSelected-1" src="'+$('#imagePort'+$(this).data('id')).attr('src')+'" />');
        changeImagePortfolio(-1);
        if($('#subImage'+$(this).data('id')).val()!=""){
            var subImageList = $('#subImage'+$(this).data('id')).val().split('@');
            for(var i=0;i<subImageList.length;i+=1){
                $('#subImages').append('<img class="showImageSelected'+i+'" src="'+subImageList[i]+'" />');
                changeImagePortfolio(i);
            }
        }
        
        if($('#embed'+$(this).data('id')).val()!=""){
            $('#portfolioEmbed').append('<iframe class="" width="640px" height="360px" src="https://www.artstation.com/embed/'+$('#embed'+$(this).data('id')).val()+'" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" onmousewheel="" scrolling="no"> </iframe>');
        }
        
        $('#portImg').attr('src',$('#imagePort'+$(this).data('id')).attr('src'));
        $('#portDesc').text($('#workDesc'+$(this).data('id')).val());

        $('#modalBox').fadeIn(400);
    });
    
    
    function changeImagePortfolio(index){
        $('.showImageSelected'+index).click(function(){
            $('#portImg').attr('src',$(this).attr('src'));
            $('#fancyBoxShowImage').attr('href',$(this).attr('src'));
        });
    }

    
    $('#addMoreImage').click(function(){
        $('#moreImagesBox').append('<div id="imageAdded'+imageInputBox+'"><input type="file" name="portfolio-image'+imageInputBox+'" id="portfolioImage'+imageInputBox+'" name="portfolio-image'+imageInputBox+'" /><span class="removeImageClass'+imageInputBox+'" data-idName="'+imageInputBox+'">Remove</span></div>');
        updateEventRemove(imageInputBox);
        imageInputBox+=1;
        $('#countImage').val(imageInputBox);
    });

    
    function updateEventRemove(index){
        $('.removeImageClass'+index).click(function(){
            $('#imageAdded'+$(this).attr('data-idName')).remove();
            $('#countImage').val(imageInputBox);
        });
    }
   
    
    
    ///////////////////////////////////////////////////

    //// click x, modalbox will fade out ////

    $("#closeModal").click(function(){
        $('#modalBox').fadeOut(400);
    });
    ////////////////////////////////////////
    
    ///// header nav function /////
//    
//    $(".headerNav").mouseover(function(){
//        $(".hoverNav").animate({"opaciry":"1"})
//    });
    
    ////////////////////////////////////////
//    
//    $(window).scroll(function(){
//        
//    var eScroll = $(this).scrollTop();
//        
//        $(".slowScroll").css({ "transform": "translateY("+ (eScroll *0.4)+ "px)" });
//        
//        $(".slowScrollquo").css({ "transform": "translateY("+ (eScroll /4)+ "px)" });
//        
//        $(".slowScrollsixth").css({ "transform": "translateY("+ (eScroll /6)+ "px)" });
//    });
    
//    function parallax(){
//        
//        var box1 = document.getElementById("box1");
//        
//        box1.style.top = -(window.pageYOffset / 4) + 'px';
//    }
//    window.addEventListener("scroll",parallax,false);
    
    $(window).scroll(function(){
        parallax();
    });
    
    function parallax() {
        
        var wScroll = $(window).scrollTop();
        
        $("#boxA").css("transform","translateY(" + (wScroll*0.00325)+'vw)');
        
        $("#boxA-2").css("transform","translateY(" +(wScroll*0.0155)+'vw');
        
        $("#helloWorld").css("transform","translateY(" + (wScroll*0.00525)+'vw');
        
        $(".whoIam").css("transform","translateY(" + (wScroll*0.00525)+'vw');
        
        $(".myWorks").css("transform","translateY(" +(wScroll*0.00755)+'vw');
        
        $(".about-box2").css("transform","translateY(" +(wScroll*0.00955)+'vw');
        
        $("#questions").css("transform","translateY(" +(wScroll*0.00555)+'vw');
        
        $("#creative").css("transform","translateY(" +(wScroll*0.00255)+'vw');
        
    }
    
    ///////////////////
    
    //// smooth scrolling code /////
    
    $("html").easeScroll();

    $("html").easeScroll({
        frameRate: 60,
        animationTime: 1000,
        stepSize: 120,
        pulseAlgorithm: 1,
        pulseScale: 8,
        pulseNormalize: 1,
        accelerationDelta: 20,
        accelerationMax: 1,
        keyboardSupport: true,
        arrowScroll: 50,
        touchpadSupport: true,
        fixedBackground: true
    });
    
    //////////////////////////////
    
    


});

