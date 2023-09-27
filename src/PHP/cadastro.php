<?php
// include('connect.php');

    // if(isset($_POST['submit']))
    // {

    //     $nome = $_POST['nome']; 
    //     $sobrenome = $_POST['sobrenome'];
    //     $email = $_POST['email']; 
    //     $usuario = $_POST['usuario']; 
    //     $senha = $_POST['senha'];
    //     // $estado = $_POST['estado'];
    //     // $cidade = $_POST['cidade'];
    //     $dia = $_POST['dia'];
    //     $mes = $_POST['mes'];
    //     $ano = $_POST['ano'];
    //     $data_nasc = "$ano-$mes-$dia";

    //     $result = mysqli_query($conexao, "INSERT INTO usuario(nome,sobrenome,senha,email,usuario,data_nasc) 
    //     VALUES ('$nome','$sobrenome','$senha','$email','$usuario','$data_nasc')");

    //     // header('Location: /src/PHP/cadastro.php');
    // }
include('connect.php');

if(isset($_POST['submit']))
{
    // Verifique se todos os campos obrigatórios estão preenchidos
    if(empty($_POST['nome']) || empty($_POST['sobrenome']) || empty($_POST['email']) || empty($_POST['usuario']) || empty($_POST['senha']) || empty($_POST['dia']) || empty($_POST['mes']) || empty($_POST['ano']))
    {
        echo "Todos os campos são obrigatórios!";
        exit;
    }

    // Obtenha os valores dos campos
    $nome = $_POST['nome'];
    $sobrenome = $_POST['sobrenome'];
    $email = $_POST['email'];
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $ano = $_POST['ano'];
    $data_nasc = "$ano-$mes-$dia";

    // Use declarações preparadas para evitar SQL Injection
    $stmt = $conexao->prepare("INSERT INTO usuario(nome, sobrenome, senha, email, usuario, data_nasc) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $nome, $sobrenome, $senha, $email, $usuario, $data_nasc);

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