<?php 
include ('connect.php')

if(isset($_POST['submit']))
{
    $comentario = $_POST['comentario'];
    $result = mysqli_query($conexao, "INSERT INTO comentario(comentario_text, ID_usuario) 
    VALUES ('$comentario', '', '')");

    $comentario_text = "";
    $ID_usuario = ; 
   
}
?>