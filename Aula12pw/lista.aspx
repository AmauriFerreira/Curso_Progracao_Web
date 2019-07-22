<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lista.aspx.cs" Inherits="pw12.lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        LISTA<br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="logout" Text="SAIR" />
        <br />


        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="codigo" DataNavigateUrlFormatString="cliente.aspx?codigo={0}" HeaderText="Detalhe" Text="editar" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
