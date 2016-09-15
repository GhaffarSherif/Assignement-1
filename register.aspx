<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>
<%@ Register TagPrefix="My" TagName="UserControl" Src="~/UserControl.ascx" %>
<%@ Reference Control="~/UserControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Username:<br />
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CustomValidator onservervalidate="usernameRegister_ServerValidate" ID="checkUsername" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="Username already taken!" ForeColor="Red"></asp:CustomValidator>
        <br />
        Password:<br />
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="next" runat="server" Text="Next" />
    
    </div>
    </form>
</body>
</html>
