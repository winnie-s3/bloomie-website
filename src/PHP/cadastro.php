<?php

include ("connect.php"); 

// Função para limpar e validar os dados do usuário.
function validarEntrada($entrada) {
    $entrada = trim($entrada); // Remove espaços em branco no início e no final.
    $entrada = stripslashes($entrada); // Remove barras invertidas adicionadas automaticamente.
    $entrada = htmlspecialchars($entrada); // Converte caracteres especiais em entidades HTML.
    return $entrada;
}

// Verifica se o formulário foi enviado.
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  // Verifica se os campos obrigatórios estão preenchidos.
  if (empty($nome) || empty($sobrenome) || empty($email) || empty($usuario) || empty($senha) || empty($data_nasc)) {
    echo "Por favor, preencha todos os campos obrigatórios.";
} else {

    // Gera um hash seguro para a senha.
    $senhaHash = password_hash($senha, PASSWORD_DEFAULT);

}

}

include("../pages/cadastro.html");

?> 