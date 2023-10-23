
<?php

include('connect.php');

if(isset($_POST['submit']))
{
    // Verifique se todos os campos obrigatórios estão preenchidos
    //if(empty($_POST['setor_empresa']) || empty($_POST['email_empresa']) )
    //{
        //echo "Todos os campos são obrigatórios!";
      //  exit;
    //}

    // Obtenha os valores dos campos
    $nome_empresa = $_POST['nome_empresa'];
    $setor_empresa = $_POST['setor_empresa'];
    $email_empresa = $_POST['email_empresa'];
  

    // Use declarações preparadas para evitar SQL Injection
    $stmt = $conexao->prepare("INSERT INTO empresa(nome_empresa,setor_empresa,email_empresa) VALUES ('$nome_empresa','$setor_empresa','$email_empresa')");


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