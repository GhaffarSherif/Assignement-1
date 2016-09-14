<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 79px;
            width: 349px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <h3>User Information:</h3>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </p>
        <br />
        <br />
        Send a message:<br />
        <asp:TextBox ID="messageTextBox" runat="server" TextMode="MultiLine" Height="31px" Width="175px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="messageTextBox" Display="Dynamic" ErrorMessage="Please enter a message" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="sendMessageButton" runat="server" Text="Send Message" />
            
    </div>
    </form>
</body>
</html>
