<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contato.aspx.cs" Inherits="contato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Contato</title>
		<meta name="description" content="Pagina para professores da rede pública compartilharem seus planos de aula" />
		<meta name="keywords" content="Educação, Plano de Ensino, Aulas,Exercicios, Provas," />
		<link rel="stylesheet" type="text/css" href="estilo.css">
		<script src="jquery-3.3.1.min.js"> </script></head>
</head>
<body>
    <form id="form1" runat="server">
        <div id="corpo">
		
			<div id="topo">
				<h1>Fale Conosco</h1>
				<div class="login" align="right"><a href="login.aspx" id="login"> Login </a></div></br>
			
				<!-- The navigation menu -->
				<div class="navbar">
				  <a href="index.aspx">Pagina Inicial</a>
				  <div class="subnav">
					<button class="subnavbtn">Sobre <i class="fa fa-caret-down"></i></button>
					<div class="subnav-content">
					  <a href="sistema.aspx">O Sistema</a>
					  <a href="desenvolvedores.aspx">Desenvolvedores</a>
					</div>
				  </div>
				  <a href="crud.aspx">Cadastro</a>
				  <a href="pesquisar.aspx">Pesquisar</a>
				  <a href="contato.aspx">Contato</a>
				</div>
			</div>
			</br></br>
			<form>
				<label>Nome: </label><input type="text" id="nome" size="40" autofocus/><br/>
				<label>E-mail: </label><input type="text" id="email" size="50" /><br/>
				<label>Assunto: </label><select id="assunto"> 
							<option>Duvidas</option>
							<option>Sugestões</option>
							<option>Criticas</option>
						</select><br/>
				Deseja receber uma copia deste e-mail:
				<input type="radio" id="sim" name="copia" />Sim
				<input type="radio" id="nao" name="copia" />Não<br/>
				<label>Mensagem:</label><textarea id="msg" rows="5" cols="40"></textarea>
				<br/>
				<input type="button" value="Enviar" class="botoes" onclick="validar();">
			</form>
				
		</div>
    </form>
</body>
</html>
<script lang="javascript">
function validar(){
	if(nome.value.length < 3){
		alert("Digite o seu nome corretamente !");
		return false;
	}
	// A@A.CO
	// indexOf - traz a posição de um caracter em uma string se nao achar traz -1
	if(email.value.length < 6       || 
	   email.value.indexOf("@") < 1 ||
	   email.value.indexOf(".") < 1 
	   )
	   {
			alert("email invalido, verifique !");
			return false;
	   }
	if(senha.value.length < 6)
	{
		alert("Digite uma senha com ao menos 6 caracteres!");
		return false;
	}
	if(msg.value.length < 15){
		alert("Digite uma mensagem com pelo menos 15 caracteres!");
		return false;
	}
}
</script>
