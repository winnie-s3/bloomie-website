<?php

include('connect.php');

if(isset($_POST['submit']))
{
    $nome = $_POST['nome'];
    $sobrenome = $_POST['sobrenome'];
    $email = $_POST['email'];
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];
    $anoNasc = $_POST['ano'];
    $mesNasc = $_POST['mes'];
    $diaNasc = $_POST['dia'];
    $estado = $_POST['estado'];
    $cidade = $_POST['cidade'];
    $data_criacao = date("Y-m-d");

    // Validação do nome
    if (!preg_match("/^[a-zA-Z ]*$/", $nome)) {
        echo "Nome inválido. O nome deve conter apenas letras e espaços.";
        exit;
    }

    // Validação do email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Email inválido.";
        exit;
    }

    // Validação da senha
    if (strlen($senha) < 8 || !preg_match("/[a-z]/", $senha) || !preg_match("/[A-Z]/", $senha) || !preg_match("/[!@#$%^&*()_+]/", $senha)) {
        echo "Senha inválida. A senha deve ter pelo menos 8 caracteres, uma letra maiúscula, uma letra minúscula e um caractere especial.";
        exit;
    }

    // Validação da data de nascimento
    $dataNascimento = strtotime("$anoNasc-$mesNasc-$diaNasc");
    $dataLimite = strtotime('-14 years');

    if ($dataNascimento > $dataLimite) {
        echo "Você deve ter mais de 14 anos para se cadastrar.";
        exit;
    }

    // Use declarações preparadas para evitar SQL Injection
    $senha_hash = password_hash($senha, PASSWORD_DEFAULT);

    $stmt = $conexao->prepare("INSERT INTO usuario(nome, sobrenome, senha, email, usuario, estado, cidade) VALUES (?, ?, ?, ?, ?, ?, ?)");

    $stmt->bind_param("sssssss", $nome, $sobrenome, $senha_hash, $email, $usuario, $estado, $cidade);

    if ($stmt->execute()) {
        echo "Cadastro realizado com sucesso!";
        // Redirecione para outra página, se necessário
        // header('Location: outra_pagina.php');
    } else {
        echo "Erro ao cadastrar: " . $stmt->error;
    }

    // Feche a declaração preparada e a conexão
    $stmt->close();
    $conexao->close();
}
?>
