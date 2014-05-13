<?php
include_once "config.php";

$email = $_POST['email'];
$senha = $_POST['senha'];

$result = mysql_query("SELECT 
	dados_usuario.email, 
	senha.senha 
	FROM dados_usuario 
	JOIN senha ON senha.id_usuario = dados_usuario.id_usuario 
	WHERE dados_usuario.email = '$email' and senha.senha = '$senha'");

$contagem = mysql_num_rows($result); 

if ( $contagem == 1 ) {
	session_start();
	$_SESSION['email'] = $email;
	$_SESSION['senha'] = $senha;
	header("Location: ok.php");
}else{
	echo 'Ocorreu um erro';
	header("Location: login.php");
}

while($return = mysql_fetch_array($result)) {
	echo $return['nome'];
}

