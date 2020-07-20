<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="80%">
    <tr><td><br /></td></tr>
<tr>
<td align="center"> <asp:Label ID="Label1" runat="server" Text="View FeedBack" 
        Font-Size="Larger" Font-Bold="True" ForeColor="#666666"></asp:Label></td></td>

</tr>
<tr><td><br /></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" 
        Width="80%" AutoGenerateColumns="False" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
                <asp:BoundField HeaderText="User ID" DataField="UId"/>
                <asp:BoundField HeaderText="FeedBack" DataField="Feed"/>
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Time" DataField="Time" />
               
                </Columns>

        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView>
</td></tr>

</table>

</asp:Content>