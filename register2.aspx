<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="register2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        First name:
        <br />
        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" Display="Dynamic" ErrorMessage="Please enter  First name!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Last Name:<br />
        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" Display="Dynamic" ErrorMessage="Please enter last name!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Gender:<br />
        <asp:TextBox ID="gender" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="gender" Display="Dynamic" ErrorMessage="Please enter a gender!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Date Of Birth:<br />
        <asp:TextBox ID="dateOfBirth" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dateOfBirth" Display="Dynamic" ErrorMessage="Please enter a date of birth!" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator  ID="dateValidator" runat="server" ControlToValidate="dateOfBirth" Display="Dynamic" ErrorMessage="Please enter a date in the format &quot; MM/DD/YYYY&quot;" ForeColor="Red" ValidationExpression="^(?:0[1-9]|1[12])/(?:[0-2][0-9]|3[01])/[0-9]{4}"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="next" runat="server" Text="Next" />
    </div>
        
    </form>
        
</body>
</html>
