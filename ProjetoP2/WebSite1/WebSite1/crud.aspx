<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crud.aspx.cs" Inherits="cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de Professor</title>
		<meta name="description" content="Pagina para professores da rede pública compartilharem seus planos de aula" />
		<meta name="keywords" content="Educação, Plano de Ensino, Aulas,Exercicios, Provas," />
		<link rel="stylesheet" type="text/css" href="estilo.css">
		<script src="jquery-3.3.1.min.js"> </script></head>
</head>
<body>
    <form id="form1" runat="server">
        <div id="corpo">
		
			<div id="topo">
				<h1>Cadastro de Professor</h1>
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
				Preencha o formulario abaixo para poder compartilhar e pegar, aulas,exercicios,plano de aula e provas de outros professores de escolas publicas do estado de São Paulo totalmente gratuito.
			</br></br>

			<br />
            Código:
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:Button ID="btnCarregar" runat="server" Text="Carregar" OnClick="carregar" />
            <br />
            Nome:
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            Telefone:
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <br />
            Escola:
            <asp:TextBox ID="txtEscola" runat="server"></asp:TextBox>
            <br />
            E-mail:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            Senha:
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
            <br />

	        <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="cadastrar" />
            <asp:Button ID="btnAlterar" runat="server" Text="Alterar" OnClick="alterar" />
            <asp:Button ID="btnExcluir" runat="server" Text="Excluir" OnClick="deletar" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

	</div>
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
	if(txtFone.value.length < 9){
		alert("Informe um telefone completo!");
		txtFone.focus();
		return false;
	}
	/*
	if(txtFone.value.length < 11){
		alert("Informe um telefone completo!");
		txtFone.focus();
		return false;
	}
	*/
	if(isNaN(txtFone.value)){
		alert("Informe somente numeros!");
		txtFone.focus();
		return false;
	}

	if(senha.value.length < 6)
	{
		alert("Digite uma senha com ao menos 6 caracteres!");
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
	   alert("Cadastrado com Sucesso!");
	   window.location.replace("pesquisar.aspx"); //Após a validação vai para a página Pesquisar
	   return true;
}		
</script>
