<?php
include_once "config.php";

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$senha = $_POST['senha'];
$data = date('Y-m-d');

$result = mysql_query("INSERT INTO dados_usuario (nome, email, telefone) VALUES ('$nome', '$email','$telefone')");

mysql_query("INSERT INTO Senha (id_usuario, senha, dat_atualizacao) VALUES ( (SELECT MAX(id_usuario) FROM dados_usuario), '$senha', '$data')");



if ( $result == 1 ) {
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

