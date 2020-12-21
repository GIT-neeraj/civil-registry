<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminwater1.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
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
            <asp:BoundField DataField="nameofapplicant" HeaderText="Name of Applicant" SortExpression="nameofapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherhusname" HeaderText="Father's or Husband's Name"
                SortExpression="fatherhusname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="postaladdr" HeaderText="Postal Address" SortExpression="postaladdr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="surveyorplotno" HeaderText="Survey or Plot no" SortExpression="surveyorplotno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="buildingownedbyapplicant" HeaderText="Building owned by Applicant"
                SortExpression="buildingownedbyapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="residentialcommercialpurpose" HeaderText="Residential commercial purpose"
                SortExpression="residentialcommercialpurpose" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="internalinstallation" HeaderText="Internal Installation"
                SortExpression="internalinstallation" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="roadcuttingrequired" HeaderText="Roadcutting Required"
                SortExpression="roadcuttingrequired" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lengthofpipe" HeaderText="Length of pipe" SortExpression="lengthofpipe" >
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
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [nameofapplicant], [fatherhusname], [postaladdr], [surveyorplotno], [buildingownedbyapplicant], [residentialcommercialpurpose], [internalinstallation], [roadcuttingrequired], [lengthofpipe] FROM [water1]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

