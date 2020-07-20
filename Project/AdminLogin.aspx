<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
<table width="80%">
<tr><td><br /></td></tr>
<tr><td align="center">
    <asp:Label ID="Label1" runat="server" Text="Admin Login" Font-Bold="True" 
        Font-Size="Larger" ForeColor="#666666"></asp:Label></td></tr>
        <tr><td><br /></td></tr>
<tr>
<td align="center">
    <asp:TextBox ID="TextBox1" Placeholder="Admin ID" runat="server" Height="28px" 
        Width="154px"></asp:TextBox></td>

</tr>
<tr><td><br /></td></tr>
<tr>
<td align="center">
    <asp:TextBox ID="TextBox2" Placeholder="Password" runat="server" Height="28px" 
        TextMode="Password" Width="154px"></asp:TextBox></td>

</tr>
<tr><td><br /></td></tr>
<tr>
<td align="center">
    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /></td>
</tr>
</table>
</div>


</asp:Content>