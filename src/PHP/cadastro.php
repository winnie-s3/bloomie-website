<?php
include ("connect.php");

// Defina as variáveis a partir dos valores do formulário

$nome = $_POST['inputNome']; 
$sobrenome = $_POST['inputSobrenome'];
$email = $_POST['inputEmail']; 
$usuario = $_POST['inputUsuario']; 
$senha = $_POST['senha']; 

// Verifique se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Gere um hash seguro para a senha
    $senhaHash = password_hash($senha, PASSWORD_DEFAULT);

    // Preparar a consulta SQL usando um prepared statement
    $sql = "INSERT INTO usuario (nome, sobrenome, email, usuario, senha) VALUES (?, ?, ?, ?, ?)";

    if ($stmt = $connect->prepare($sql)) {
        // Vincule as variáveis aos parâmetros da consulta
        $stmt->bind_param("sssss", $nome, $sobrenome, $email, $usuario, $senhaHash);

        // Execute a consulta
        if ($stmt->execute()) {
            // Cadastro realizado com sucesso
            echo "Cadastro realizado com sucesso!";
        } else {
            // Erro ao executar a consulta SQL
            echo "Erro ao cadastrar o usuário: " . $stmt->error;
        }

        // Feche a declaração
        $stmt->close();
    } else {
        // Erro ao preparar a declaração SQL
        echo "Erro ao preparar a declaração SQL: " . $connect->error;
    }

    // Feche a conexão com o banco de dados
    $connect->close();

} else {
    echo "Formulário não enviado";
}


?>


