<?php

include('connect.php');

if(isset($_POST['submit']))
{
    // Verifique se todos os campos obrigatórios estão preenchidos
   // if(empty($_POST['setor_empresa']) || empty($_POST['email_empresa']) )
   // {
    //echo "Todos os campos são obrigatórios!";
      //  exit;
  //  }

    // Obtenha os valores dos campos
    $nome_mentor = $_POST['nome_mentor'];
    $sobrenome_mentor = $_POST['sobrenome_mentor'];
    $email_mentor = $_POST['email_mentor'];
    $setor_mentor = $_POST['setor_mentor'];
    
  

    // Use declarações preparadas para evitar SQL Injection
    $stmt = $conexao->prepare("INSERT INTO mentor(nome_mentor,sobrenome_mentor,email_mentor,setor_mentor) VALUES ('$nome_mentor','$sobrenome_mentor','$email_mentor','$setor_mentor')");


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