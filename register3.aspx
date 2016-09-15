<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register3.aspx.cs" Inherits="register3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Street Address:<br />
        <asp:TextBox ID="street" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="street" Display="Dynamic" ErrorMessage="Please enter a street address!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        City:<br />
        <asp:TextBox ID="city" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="city" Display="Dynamic" ErrorMessage="Please enter a  city!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Province:<br />
        <asp:TextBox ID="province" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="province" Display="Dynamic" ErrorMessage="Please enter a province!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Country:<br />
        <asp:TextBox ID="country" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="country" Display="Dynamic" ErrorMessage="Please enter a country!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Postal:<br />
        <asp:TextBox ID="postal" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="postal" Display="Dynamic" ErrorMessage="Please enter a Postal code!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:CheckBox ID="checkbox" runat="server" Text="You accept our terms and conditions (there are none )" />
        <br />
        <asp:Button ID="register" runat="server" Text="Register" />
    
    </div>
    </form>
</body>
</html>
