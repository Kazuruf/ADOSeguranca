<?php
session_start();

if(@$_SESSION['email'] && @$_SESSION['senha']){
    header("Location: ok.php");
}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form name="login" method="post" action="login_.php">
<table width="400" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="150"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Email:</font></td>
      <td width="250"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"> 
        <input name="email" type="text" id="email">
        </font></td>
  </tr>
  <tr> 
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Senha:</font></td>
      <td><input name="senha" type="password" id="senha"></td>
  </tr>
  <tr> 
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td>
  </tr>
  <tr> 
    <td><div align="center"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
          <input name="entrar" type="submit" id="entrar" value="Entrar">
          </font></div></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><a href="senha.php">Esqueceu 
      a senha?</a> <a href="cadastrar.php">Cadastre-se</a></font></td>
  </tr>
</table>
</form>
</body>
</html>
