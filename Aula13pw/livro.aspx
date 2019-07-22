<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="livro.aspx.cs" Inherits="pw13_correcao.livro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Livros</h1>        
        codigo:<asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Pesquisar" OnClick="read" />        
        <br />
        titulo:<asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>        
        <br />
        autor:<asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
        <br />        
        qtd:<asp:TextBox ID="txtQtd" TextMode="Number" runat="server"></asp:TextBox>        
        <br />
        valor:<asp:TextBox ID="txtValor"   runat="server"></asp:TextBox>
        <br />        
        paginas:<asp:TextBox ID="txtPaginas" TextMode="Number" runat="server"></asp:TextBox>
        <br />        
        resumo:<asp:TextBox ID="txtResumo" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br />        
        <asp:Button ID="Button1" runat="server" Text="Inserir" OnClick="create" />
        <asp:Button ID="Button3" runat="server" Text="Alterar" OnClick="update" />
        <asp:Button ID="Button4" runat="server" Text="Excluir" OnClick="delete" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
