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

// ------------------------------------------

$(document).ready(function() {
  // Inicialize o datepicker no campo de entrada de data
  $("#datepicker").datepicker({
    format: "dd/mm/yyyy",
    autoclose: true
  });

  // Obtenha as referências dos elementos select
  var daySelect = $("#day");
  var monthSelect = $("#month");
  var yearSelect = $("#year");

  // Preencha os dropdowns com opções de data
  for (var i = 1; i <= 31; i++) {
    daySelect.append($('<option></option>').val(i).html(i));
  }

  var months = [
    "Janeiro", "Fevereiro", "Março", "Abril",
    "Maio", "Junho", "Julho", "Agosto",
    "Setembro", "Outubro", "Novembro", "Dezembro"
  ];

  for (var i = 0; i < months.length; i++) {
    monthSelect.append($('<option></option>').val(i + 1).html(months[i]));
  }

  var currentYear = new Date().getFullYear();
  var startYear = currentYear - 100; // Pode ajustar o intervalo de anos aqui

  for (var i = startYear; i <= currentYear; i++) {
    yearSelect.append($('<option></option>').val(i).html(i));
  }
});
