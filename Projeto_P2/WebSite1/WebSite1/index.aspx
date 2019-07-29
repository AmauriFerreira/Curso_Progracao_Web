<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Home - Sistema de Compartilhamento de Planos de Aulas</title>
		<meta name="description" content="Pagina para professores da rede pública compartilharem seus planos de aula" />
		<meta name="keywords" content="Educação, Plano de Ensino, Aulas,Exercicios, Provas," />
		<link rel="stylesheet" type="text/css" href="estilo.css">
		<script src="jquery-3.3.1.min.js"> </script></head>
</head>
<body>
    <form id="form1" runat="server">
        <div id="corpo">
		
			<div id="topo">
				<h1>Sistema de Compartilhamento de Planos de Aulas</h1>
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
			</br>
			</br>
			<div id="fundo">
			</div>
			
		</div>
    </form>
</body>
</html>
