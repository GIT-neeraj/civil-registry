<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminfeedback.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="areaofwork" HeaderText="Area of work" SortExpression="areaofwork" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Country">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="telephone" HeaderText="Telephone" SortExpression="telephone" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fax" HeaderText="Fax" SortExpression="fax" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="queries" HeaderText="Queries" SortExpression="queries" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.PNG" HeaderText="Delete"
                ShowDeleteButton="True">
                <HeaderStyle Wrap="False" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [name], [designation], [company], [areaofwork], [address], [city], [state], [country], [pin], [email], [telephone], [fax], [queries] FROM [Feedback]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

