<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ViewBooking.aspx.cs" Inherits="ViewBooking" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="80%">
      <tr>
        <td colspan="4"><br /></td>
        
        </tr>
<tr><td colspan="4" align="center">
    <asp:Label ID="Label1" runat="server" Text="View Booking" Font-Bold="True" 
        Font-Size="Larger" ForeColor="#666666"></asp:Label></td></tr>
        <tr>
        <td colspan="4"><br /></td>
        
        </tr>
        <tr><td align="right">
            <asp:Label ID="Label2" runat="server" Text="From"></asp:Label></td>
        <td align="left">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
        <td align="right">
            <asp:Label ID="Label3" runat="server" Text="To"></asp:Label></td>
        <td align="left">
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        </td>
        </tr>
        <tr>
        <td colspan="4" align="center">
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td>
        </tr>
        <tr><td colspan="4"><br /></td></tr>
        <tr><td colspan="4" align="center">
            <asp:GridView ID="GridView1" runat="server" Width="80%" 
                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Booking ID" DataField="TId"/>
                <asp:BoundField HeaderText="Area" DataField="Plot"/>
                <asp:BoundField HeaderText="SlotName" DataField="Slot" />
                <asp:BoundField HeaderText="SlotID" DataField="ID" />
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Time" DataField="time" />
                  <asp:BoundField HeaderText="Expiry Time" DataField="etime" />
                <asp:BoundField HeaderText="UserID" DataField="UId" />
                <asp:BoundField HeaderText="€" DataField="Rs" />
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