<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pesquisar.aspx.cs" Inherits="pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
		<script src="jquery-3.3.1.min.js"> </script></head>
</head>
<body>
    <form id="form1" runat="server">
        <div id="corpo">
			<div id="topo">
				<h1>Pesquisa de Planos de Aulas</h1>
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
			</br></br></br>
			Defina os critérios de pesquisa abaixo:
			</br></br>
		<form>
			Escolha o que você precisa:<select id="assunto"> 
						<option>Posta material </option>
						<option>Ou ver material  </option>
						</select><br/>
			Escolha Tipo de material :<select id="assunto"> 
						<option>jpg</option>
						<option>pdf</option>
						<option>vídeo </option>
						</select><br>
			Escolha a serie :<select id="assunto"> 
						<option>5°Série do ensino fundamental </option>
						<option>6°Série do ensino fundamental </option>
						<option>7°Série do ensino fundamental </option>
						<option>8°Série do ensino fundamental </option>
						<option>9°Série do ensino fundamental </option>
						<option>1°Ano do ensino médio </option>
						<option>2°Ano do ensino médio </option>
						<option>3°Ano do ensino médio </option>
					</select><br>
			Escolha a disiciplina :<select id="assunto"> 
						<option>Matemática </option>
						<option>Física </option>
						<option>Português </option>
						<option>Histório </option>
						<option>Geografia </option>
						</select><br>
			Escolha Tipo de material :<select id="assunto"> 
						<option>Plano de aula</option>
						<option>Aula</option>
						<option>Exercício </option>
						<option>Provas </option>
						</select><br>
		</form>		
    </form>
</body>
</html>
<script lang="javascript">
function validar(){
	//length conta a quantidade de caracteres informados
	if(nome.value.length < 3){
		alert("Digite o seu nome corretamente !");
		return false;
	}
	if(txtFone.value.length < 11){
		alert("Informe um telefone completo!");
		txtFone.focus();
		return false;
	}
	if(txtFone.value.length!= Number){
		alert("Informe somente numeros!");
		txtFone.focus();
		return false;
	}

	if(senha.value.length < 6)
	{
		alert("Digite uma senha com almenos 6 caracteres!");
		return false;
	}
	if(senha.value != senha2.value)
	{
		alert("Senha e confirmação nao batem");
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
}
	
</script>