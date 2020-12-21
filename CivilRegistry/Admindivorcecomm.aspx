<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admindivorcecomm.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="applicant" HeaderText="Applicant" SortExpression="applicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sepdate" HeaderText="Separation Date" SortExpression="sepdate" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placemarriage" HeaderText="Place of Marriage" SortExpression="placemarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="childrens" HeaderText="Children" SortExpression="childrens" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="childrenunder" HeaderText="Children Under" SortExpression="childrenunder" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="numberofchild" HeaderText="Number of Child" SortExpression="numberofchild" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="childname" HeaderText="Child Name" SortExpression="childname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="timecommwithchild" HeaderText="Time of communication with child" SortExpression="timecommwithchild" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="financialsupport" HeaderText="Financial support" SortExpression="financialsupport" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="health" HeaderText="Health" SortExpression="health" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="education" HeaderText="Education" SortExpression="education" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.PNG" HeaderText="Delete"
                ShowDeleteButton="True">
                <HeaderStyle Wrap="False" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <EditRowStyle Wrap="True" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [applicant], [sepdate], [placemarriage], [childrens], [childrenunder], [numberofchild], [childname], [timecommwithchild], [financialsupport], [health], [education] FROM [divorcecommon]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

