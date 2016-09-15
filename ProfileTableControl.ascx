<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProfileTableControl.ascx.cs" Inherits="ProfileTableControl" %>

<tr runat="server">
    <td><%= this.Username %></td>
    <td><asp:Button runat="server" ID="viewButton" OnClick="viewEventHandler" Text="View User" CausesValidation="false" /></td>
</tr>