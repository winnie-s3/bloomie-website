<?php

include('connect.php');

if(isset($_POST['submit']))
{
    $nome = $_POST['nome'];
    $sobrenome = $_POST['sobrenome'];
    $email = $_POST['email'];
    $usuario = $_POST['usuario'];
    $senha = ($_POST ['senha']);
    //$anoNasc = $_POST['ano'];
    //$diaNasc = $_POST['dia'];
    $estado = $_POST['estado'];
    $cidade = $_POST['cidade'];
    //$data_criacao = date("Y-m-d");


    $stmt = $conexao->prepare("INSERT INTO usuario(nome, sobrenome, email, usuario, senha, estado, cidade) VALUES ('$nome','$sobrenome','$email','$usuario','$senha','$estado','$cidade')");


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
