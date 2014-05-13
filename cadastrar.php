<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Cadastro de Usuarios</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form name="cadastrar.php" method="post" action="cadastrar_.php">
  <table width="400" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="150"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Nome:</font></td>
      <td width="250"><input name="nome" type="text" id="nome" maxlength="75"></td>
    </tr>
    <tr> 
      <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Email:</font></td>
      <td><input name="email" type="text" id="email" maxlength="50"></td>
    </tr>
    <tr>
      <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Telefone:</font></td>
      <td><input name="telefone" type="text" id="telefone" maxlength="30"></td>
    </tr>
    <tr> 
      <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Senha:</font></td>
      <td><input name="senha" type="password" id="senha" maxlength="30"></td>
    </tr>

    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="enviar" type="submit" id="enviar" value="Enviar Cadastro">
          <input name="limpar" type="reset" id="limpar" value="Limpar Dados">
        </div></td>
    </tr>
  </table>
</form>
</body>
</html>
