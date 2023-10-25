<?php 
include ('connect.php');

if(isset($_POST['submit'])){
    $data_publicação = $_POST['data_publicacao'];
    $documento = $_POST['documento'];
    $imagem = $_POST['imagem'];
    $texto = $_POST['texto'];
    $stmt = $conexao->prepare("INSERT INTO post(data_publicacao,documento,imagem,texto) 
    VALUES ('$data_publicaçao','$documento','$imagem','$texto')");

    if ($stmt->execute()) {
        echo "Post feito!";
       
    } else {
        echo "campo vazio " . $stmt->error;
    }
}

?>