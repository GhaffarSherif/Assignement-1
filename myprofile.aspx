<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <div id="view" runat="server">
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
        </div>
        <br />
        <br />
        <br />
        <div id="editor" runat="server">
        <h3>Edit Profile:</h3>
            <table>
                <tr>
                    <td>
                        Password:<br />
                        <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox><br /><br />
                        First Name:<br />
                        <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox><br /><br />
                        Last Name:<br />
                        <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox><br /><br />
                    </td>
                    <td>
                        Gender:<br />
                        <asp:TextBox ID="genderTextBox" runat="server"></asp:TextBox><br /><br />
                        Date of birth:<br />
                        <asp:TextBox ID="dateOfBirthTextBox" runat="server"></asp:TextBox><br /><br />
                        Street:<br />
                        <asp:TextBox ID="streetTextBox" runat="server"></asp:TextBox><br /><br />
                    </td>
                    <td>
                        City:<br />
                        <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox><br /><br />
                        Province/State:<br />
                        <asp:TextBox ID="provinceTextBox" runat="server"></asp:TextBox><br /><br />
                        ZIP/Postal Code:<br />
                        <asp:TextBox ID="postalCodeTextBox" runat="server"></asp:TextBox><br /><br />
                    </td>
                </tr>
            </table>
            <asp:Button ID="editButton" runat="server" Text="Edit" Width="6em" />                    
        </div>
                    
    
    </div>
    </form>
</body>
</html>
