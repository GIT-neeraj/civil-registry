<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminelec1.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofapplicant" HeaderText="Name of Applicant" SortExpression="nameofapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lightperpt" HeaderText="Light per point" SortExpression="lightperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lighttotal" HeaderText="Light total" SortExpression="lighttotal" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fanperpt" HeaderText="Fan per point" SortExpression="fanperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fantotal" HeaderText="Fan total" SortExpression="fantotal" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lightplugperpt" HeaderText="Light plug per point" SortExpression="lightplugperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lightplugtotal" HeaderText="Light plug total" SortExpression="lightplugtotal" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="powerplugperpt" HeaderText="Power plug per point " SortExpression="powerplugperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="powerplugtotal" HeaderText="Power plug total" SortExpression="powerplugtotal" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="airperpt" HeaderText="Air per point" SortExpression="airperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Air total">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="motorperpt" HeaderText="Motor per point" SortExpression="motorperpt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="motortotal" HeaderText="Motor total" SortExpression="motortotal" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.PNG" HeaderText="Delete"
                ShowDeleteButton="True">
                <HeaderStyle Wrap="False" />
            </asp:CommandField>
        </Columns>
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [nameofapplicant], [lightperpt], [lighttotal], [fanperpt], [fantotal], [lightplugperpt], [lightplugtotal], [powerplugperpt], [powerplugtotal], [airperpt], [airtotal], [motorperpt], [motortotal], [total] FROM [electricity1]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

