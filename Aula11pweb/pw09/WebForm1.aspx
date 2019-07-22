<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pw09.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%
            Response.Write(DateTime.Now);            
             %>


        <h1><strong>PW09</strong></h1>
        <p>
            N1:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            N1:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="calcular" Text="Media" />
        </p>
        <p>
            Resultado: <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>


    </div>
    </form>
</body>
</html>
