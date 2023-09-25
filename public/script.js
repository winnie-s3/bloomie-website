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

togglePassword.addEventListener('click', function () {
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

// ALTERNAR ENTRE POSTAGENS E OPORTUNIDADES

// Função para mostrar o conteúdo das oportunidades
function mostrarOportunidades() {
  document.getElementById("feed-oportunidades").classList.remove('conteudo');
  document.getElementById("sidebar-oportunidades").classList.remove('conteudo');
  document.getElementById("feed-postagens").classList.add('conteudo');
  document.getElementById("sidebar-postagens").classList.add('conteudo');
  console.log('oioi');
}

// Função para mostrar o conteúdo das postagens
function mostrarPostagens() {
  document.getElementById("feed-oportunidades").classList.add('conteudo');
  document.getElementById("sidebar-oportunidades").classList.add('conteudo');
  document.getElementById("feed-postagens").classList.remove('conteudo');
  document.getElementById("sidebar-postagens").classList.remove('conteudo');
  console.log('oioipostagens');
}

// Adicione ouvintes de eventos aos botões
document.getElementById("btnOportunidades").addEventListener("click", mostrarOportunidades);
document.getElementById("btnPostagens").addEventListener("click", mostrarPostagens);

// Mostrar as oportunidades por padrão ao carregar a página
mostrarPostagens();

// --------------- CIDADES E ESTADOS ------------------
const ulrUF = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
const cidade = document.getElementById("cidade");
const uf = document.getElementById("uf");

uf.addEventListener('change', async function () {
  const urlCidades = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/' + uf.value + '/municipios';
  const request = await fetch(urlCidades);
  const response = await request.json();
  console.log(response.length);
let options = ''
  response.forEach(function (cidades) {
    options += '<option>' + cidades.nome + '</option>'
  });
cidade.innerHTML = options;
});

window.addEventListener('load', async ()=> {
  const request = await fetch(ulrUF)
  const response = await request.json()

  const options = document.createElement("optgroup")
  options.setAttribute('label', 'UFS')
  response.forEach(function(uf) {
    options.innerHTML += '<option>' + uf.sigla + '</option>'
})

uf.append(options);

})