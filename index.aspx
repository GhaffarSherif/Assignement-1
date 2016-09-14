<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 644px">
    <form id="form1" runat="server">
    <div>
    <div style="height: 486px">
            <div style="position: relative; left: 0%; right: 0%; top: 0px; height: 413px;" >
    
                Please Enter login information:<br />
                Username:<br />
                <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" Display="Dynamic" ErrorMessage="Please enter a username!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                Password:<br />
                <asp:TextBox ID="lastNameTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastNameTextBox" Display="Dynamic" ErrorMessage="Please enter a lastname!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ValidationGroup="valGroup1" ID="loginButton" runat="server" Text="Login" Width="5em" />
    
                <asp:Button ID="registerButton" runat="server" Text="Register" Width="5em" OnClick="registerButton_Click" />
                 
        
                <br />
                 
        
            </div>
        
            </div>
        </div>
    </form>
</body>
</html>
