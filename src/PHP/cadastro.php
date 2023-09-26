<?php
include('connect.php');

    if(isset($_POST['submit']))
    {

        $nome = $_POST['nome']; 
        $sobrenome = $_POST['sobrenome'];
        $email = $_POST['email']; 
        $usuario = $_POST['usuario']; 
        $senha = $_POST['senha'];
        $estado = $_POST['estado'];
        $cidade = $_POST['cidade'];
        $dia = $_POST['dia'];
        $mes = $_POST['mes'];
        $ano = $_POST['ano'];
        $data_nasc = "$ano-$mes-$dia";

        $result = mysqli_query($conexao, "INSERT INTO usuarios(nome,sobrenome,senha,email,usuario,data_nasc,cidade,estado) 
        VALUES ('$nome','$sobrenome','$senha','$email','$usuario','$data_nasc','$cidade','$estado')");

        // header('Location: /src/PHP/cadastro.php');
    }

?>