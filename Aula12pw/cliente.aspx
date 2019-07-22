<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="pw10.cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Cliente</h2>
        <p>
            codigo:<asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Text="Pesquisar" OnClick="pesquisar" />
        </p><p>
            nome:<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        </p><p>
            email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p><p>
            telefone:<asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
        </p><p>
            senha:<asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
        </p><p>
            <asp:Button ID="Button1" runat="server" Text="Inserir" OnClick="inserir" />
            <asp:Button ID="Button2" runat="server" Text="Alterar" OnClick="alterar" />
            <asp:Button ID="Button3" runat="server" Text="Excluir" OnClick="excluir" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    
    </div>
    </form>
</body>
</html>
