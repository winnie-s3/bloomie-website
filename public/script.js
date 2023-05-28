// $(window).on('load', function () {
//     setTimeout(function () {
//         $('#splash-screen').fadeOut('slow', function () {
//             $(this).remove();
//         });
//     }, 2800);
// });

var swiper = new Swiper(".swiper-container", {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  slidesPerView: "auto",
  centeredSlides: true,
  initialSlide: 1,
  coverflowEffect: {
    rotate: 0,
    stretch: 0,
    depth: 100,
    modifier: 10,
    initialSlide: 2,
    slideShadows: true
  },
  pagination: {
    el: ".swiper-pagination",
     clickable: true
  }
});