<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminpan.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="cardname" HeaderText="Card Name" SortExpression="cardname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fathername" HeaderText="Father's Name" SortExpression="fathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address of representative" SortExpression="address" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="offaddress" HeaderText="Office Address" SortExpression="offaddress" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="appstat" HeaderText="Applicant Status" SortExpression="appstat" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="regno" HeaderText="Registration no" SortExpression="regno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="citizen" HeaderText="Citizen" SortExpression="citizen" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="addressrep" HeaderText="Address Rep" SortExpression="addressrep" >
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
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [name], [cardname], [fathername], [address], [offaddress], [sex], [appstat], [dob], [regno], [citizen], [addressrep] FROM [pan]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

