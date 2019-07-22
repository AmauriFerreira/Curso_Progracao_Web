<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pw15_correcao.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Data de Inscrição 
    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtData" ErrorMessage="– Período de 01/07/2019 ate 31/12/2019" MaximumValue="31/12/2019" MinimumValue="01/07/2019" Type="Date"></asp:RangeValidator>
&nbsp;<br />Email 
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="– validação de e-mail valido " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />Senha: 
    <asp:TextBox ID="txtSenha" TextMode="Password" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSenha" ErrorMessage="– campo obrigatório"></asp:RequiredFieldValidator>
    <br />Confirmação de senha 
    <asp:TextBox ID="txtConfirma" TextMode="Password"  runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirma" ErrorMessage="– verificar se esta igual ao campo senha"></asp:CompareValidator>
    <br />cep
    <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCep" ErrorMessage="– código numérico de 8 dígitos" ValidationExpression="\d{5}-\d{3}?"></asp:RegularExpressionValidator>
    <br />Valor de compra
    <asp:TextBox ID="txtCompra" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCompra" ErrorMessage="-Informe um valor"></asp:RequiredFieldValidator>
    <br />Valor de Venda 
    <asp:TextBox ID="txtVenda" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtCompra" ControlToValidate="txtVenda" ErrorMessage="– Valor de Venda não pode ser menor que valor de compra " Operator="GreaterThan" Type="Double"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
