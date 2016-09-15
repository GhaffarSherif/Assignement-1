<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Please Enter login information:</h3>
                
            <table>
                <tr>
                    <td>
                        Username:<br />
                        <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" Display="Dynamic" ErrorMessage="Please enter a username!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        Password:<br />
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ValidationGroup="valGroup1" ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTextBox" Display="Dynamic" ErrorMessage="Please enter a lastname!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Button ValidationGroup="valGroup1" ID="loginButton" runat="server" Text="Login" Width="5em" OnClick="loginButton_Click"/>
            <asp:Button ID="registerButton" runat="server" Text="Register" Width="5em" OnClick="registerButton_Click" />
            <asp:Label runat="server" ID="incorrectUserPass" ForeColor="Red" Visible="False">Incorrect username or password!</asp:Label>
        </div>
    </form>
</body>
</html>
