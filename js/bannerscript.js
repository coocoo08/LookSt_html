function Carousel1__onTranslated() {
    $('.carousel-1 > .owl-carousel').trigger('play.owl.autoplay');
    
    $('.carousel-1').attr('data-carousel-1-autoplay-status', 'Y');
}

$('.carousel-1 > .owl-carousel').owlCarousel({
    autoplay:true, // 오토 플레이
    autoplayTimeout:2000, // 오토 플레이 시에 다음 슬라이드로 넘어가는 주기, 2초
    loop:true, // 끝에서 다시 처음으로 시작
    margin:0,
    nav:true,
    navText:['<i class="fas fa-angle-left"></i>', '<i class="fas fa-angle-right"></i>'],
    responsive:{
        0:{
            items:1
        }
    },
    autoplayHoverPause:false, /* 필수 */
    onTranslated: Carousel1__onTranslated,
});

$('.carousel-1 .play').on('click',function(){
    $('.carousel-1 > .owl-carousel').trigger('play.owl.autoplay');
    
    $('.carousel-1').attr('data-carousel-1-autoplay-status', 'Y');
});

$('.carousel-1 .stop').on('click',function(){
    $('.carousel-1 > .owl-carousel').trigger('stop.owl.autoplay');
    
    $('.carousel-1').attr('data-carousel-1-autoplay-status', 'N');
});