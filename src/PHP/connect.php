<?php

$connect = new mysqli('localhost', 'root', '', 'bloomie_db'); 

if ($connect->connect_error) {
    die("Erro na conexão com o banco de dados: " . $db->connect_error);
}

    ?>