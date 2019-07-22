<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pw16_correcao.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Orçamento</h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Nome:
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />Telefone:
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <br />Produto: 
            <asp:DropDownList ID="cboProduto" runat="server"></asp:DropDownList>
            <br />Qtd:
            <asp:TextBox ID="txtQtd" TextMode="Number" runat="server"></asp:TextBox>
            <br />Mensagem:
            <asp:TextBox ID="txtMensagem" TextMode="MultiLine" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="enviar" />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>Enviando......</ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
