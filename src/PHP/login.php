<?php

$email = $_POST['email'];
$senha = md5($_POST['senha']);

$conexao = mysql_connect('localhost','root','');
$db = mysql_select_db('bloomie_db');

  if (isset($entrar)) {

    $verifica = mysql_query("SELECT * FROM usuario WHERE email =
    '$email' AND senha = '$senha'") or die("Erro!");
      
      // if (mysql_num_rows($verifica)<=0){
       // echo"<script language='javascript' type='text/javascript'>
      //  alert('Login e/ou senha incorretos');window.location
     //   .href='cadastro.html';</script>";
      //  die();

   //   }else{
      //  setcookie("login",$login);
    //    header("Location:index.html");
  //    }
  
}
?>