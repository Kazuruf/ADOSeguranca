<?php 
	session_start();

if(@!$_SESSION['email'] && @!$_SESSION['senha']){
    header("Location: login.php");
}

echo $_SESSION['email']; 
?>

<a href="sair.php">Sair</a>