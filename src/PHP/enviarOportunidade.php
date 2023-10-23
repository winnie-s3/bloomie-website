<?php
    include "connect.php";
   {
     $titulo = $_POST['titulo'];
     $categoria = $_POST['categoria']; 
     $estado = $_POST['estado'];
     $cidade = $_POST['cidade'];
     $inicio = $_POST['inicio'];
     $tempo_expirar = $_POST['tempo_expirar'];
     $descricao = $_POST['descricao'];
     $escolaridade = $_POST['escolaridade'];
     $link = $_POST['link'];
     $tipo_personalidade = $_POST['tipo_personalidade'];
     $tags = $_POST['tags'];
     $imagem = $_POST['imagem'];


     $result = mysqli_query($connect, "INSERT INTO oportunidade(titulo,categoria,estado,cidade,inicio,tempo_expirar,descricao,idade_min,idade_max,escolaridade,link,tipo_personalidade,tags,imagem) 
     VALUES ('$titulo','$categoria','$estado','$cidade','$inicio','$tempo_expirar','$descricao','$idade_min','$idade_max','$escolaridade','$link','$tipo_personalidade','$tags','$imagem')");

     
      echo"Dados Cadastrados";
    
     }
?>

