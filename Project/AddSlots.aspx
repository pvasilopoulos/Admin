<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="AddSlots.aspx.cs" Inherits="AddSlots" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="80%">
    <tr>
        <td colspan="2"><br />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label1" runat="server" Text="Add Slots" Font-Size="Larger" 
            Font-Bold="True" ForeColor="#666666"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" width="50%" align="center"><br />
        <table width="100%">
            <tr>
                <td colspan="2" align="center">
                    <asp:TextBox ID="TextBox1" Placeholder="Area Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"><br />
                </td>
            </tr>
    
            <tr>
                <td colspan="2" align="center">
                    <asp:TextBox ID="TextBox2" Placeholder="Slot Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"><br />
                </td>
            </tr>
    
            <tr>
            <td colspan="2" align="center">
                    <asp:TextBox ID="TextBox3" Placeholder="Number of Slots" runat="server"></asp:TextBox>
                    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Only Numbers" Font-Size="Small" 
        ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
    </td></tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
       <tr>
            <td colspan="2" align="center">
                    <!--<asp:TextBox ID="TextBox4" Placeholder="Pincode" runat="server"></asp:TextBox> -->
                    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Only Numbers" Font-Size="Small" 
        ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
    </td></tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Next" onclick="Button1_Click" 
                CssClass="intabular" Height="40px" Width="100px" Font-Size="Large" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <br />
            <br />
        </td>
    </tr> 
</table>

</asp:Content>