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
            Username:
            <asp:Label ID="username" runat="server"></asp:Label>
            <br />
            Full name:
            <asp:Label ID="fullName" runat="server"></asp:Label>
            <br />
            Gender:
            <asp:Label ID="gender" runat="server"></asp:Label>
            <br />
            Birth Date:
            <asp:Label ID="birthDate" runat="server"></asp:Label>
            <br />
            Address:
            <asp:Label ID="address" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <table border="1">
            <tr>
                <th>Time</th>
                <th>Message</th>
                <th>From</th>
                <th>Reply</th>
            </tr>
            <asp:PlaceHolder runat="server" ID="messagesTable"></asp:PlaceHolder>
        </table>
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
                        <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox><br />
                        <br />
                        Country:<br />
                        <asp:TextBox ID="country" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        Gender:<br />
                        <asp:TextBox ID="genderTextBox" runat="server"></asp:TextBox><br /><br />
                        Date of birth:<br />
                        <asp:TextBox ID="dateOfBirthTextBox" runat="server"></asp:TextBox><br /><br />
                        Street:<br />
                        <asp:TextBox ID="streetTextBox" runat="server"></asp:TextBox><br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        City:<br />
                        <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox><br /><br />
                        Province/State:<br />
                        <asp:TextBox ID="provinceTextBox" runat="server"></asp:TextBox><br /><br />
                        ZIP/Postal Code:<br />
                        <asp:TextBox ID="postalCodeTextBox" runat="server"></asp:TextBox><br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        <asp:RegularExpressionValidator  ID="dateValidator" runat="server" ControlToValidate="dateOfBirthTextBox" Display="Dynamic" ErrorMessage="Please enter a date in the format &quot; MM/DD/YYYY&quot;" ForeColor="Red" ValidationExpression="^(?:0[1-9]|1[12])/(?:[0-2][0-9]|3[01])/[0-9]{4}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="editButton" runat="server" Text="Edit" Width="6em" OnClick="editButton_Click" />                    
        </div>
                    
    
    </div>
    </form>
</body>
</html>
