$(window).on('load', function () {
  setTimeout(function () {
    $('#splash-screen').fadeOut('slow', function () {
      $(this).remove();
    });
  }, 2800);
});

var swiper = new Swiper(".swiper-container", {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  slidesPerView: "auto",
  centeredSlides: true,
  compatibility: true,
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

const togglePassword = document.querySelector('#togglePassword');
const password = document.querySelector('#senha');

togglePassword.addEventListener('click', function() {
  const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
  password.setAttribute('type', type);

  this.classList.toggle('ph-eye-slash');
  this.classList.toggle('ph-eye');
});


  function toggleText() {
    var contentDiv = document.querySelector('.content');
    var toggleBtn = document.querySelector('.toggle-btn');

    if (contentDiv.classList.contains('expanded')) {
      contentDiv.classList.remove('expanded');
      toggleBtn.textContent = 'Ler mais';
    } else {
      contentDiv.classList.add('expanded');
      toggleBtn.textContent = 'Ler menos';
    }
  }