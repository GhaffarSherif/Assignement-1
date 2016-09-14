<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/myprofile.aspx">My Profile</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/myprofile.aspx?edit=1">Edit profile</asp:HyperLink>
            <br />
            <table border="2">
                <tr>
                    <th>Username</th>
                    <th>View</th>
                </tr>
                <asp:PlaceHolder runat="server" ID="userTableRows" />
            </table>
        </p>
    </div>
    </form>
</body>
</html>
