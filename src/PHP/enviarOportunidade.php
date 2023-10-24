<?php
    include "connect.php";
    
if(isset($_POST['submit']))
   {
     $titulo = $_POST['titulo'];
    //$categoria = $_POST['categoria']; 
     $estado = $_POST['estado'];
     $cidade = $_POST['cidade'];
     $inicio = $_POST['inicio'];
     $tempo_expirar = $_POST['tempo_expirar'];
     //$descricao = $_POST['descricao'];
     //$escolaridade = $_POST['escolaridade'];
     $link = $_POST['link'];
     $tipo_personalidade = $_POST['tipo_personalidade'];
     //$tags = $_POST['tags'];
     // $imagem = $_POST['imagem'];
 
      $stmt = $conexao->prepare("INSERT INTO oportunidade(titulo,estado,cidade,inicio,tempo_expirar,link,tipo_personalidade) VALUES ('$titulo','$estado','$cidade','$inicio','$tempo_expirar','$link','$tipo_personalidade')");


    
      if ($stmt->execute()) {
        echo "Cadastro realizado com sucesso!";
        // Redirecione para outra página, se necessário
        // header('Location: outra_pagina.php');
    } else {
        echo "Erro ao cadastrarr: " . $stmt->error;
    }
    

    // Feche a declaração preparada e a conexão
    $stmt->close();
    $conexao->close();
    
     }
?>

