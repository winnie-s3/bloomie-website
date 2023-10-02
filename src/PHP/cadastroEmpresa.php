<?php
include('connect.php');

    if(isset($_POST['submit']))
    {

        $nomeEmpresa = $_POST['nomeEmpresa'];
        $email = $_POST['email']; 
        $senha = $_POST['senha'];
        $setor = $_POST['setor'];

        $result = mysqli_query($conexao, "INSERT INTO empresa(nome,sobrenome,senha,email,usuario,data_nasc,cidade,estado) 
        VALUES ('$nome','$sobrenome','$senha','$email','$usuario','$data_nasc','$cidade','$estado')");

        // header('Location: /src/PHP/cadastro.php');
    }

?>