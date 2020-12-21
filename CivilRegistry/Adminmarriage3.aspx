<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminmarriage3.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField HeaderText="SlNo">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofregistration" HeaderText="Date of Registration"
                SortExpression="dateofregistration" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomname" HeaderText="Bridegroom's Name" SortExpression="bridegroomname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridename" HeaderText="Bride's Name" SortExpression="bridename" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomfathername" HeaderText="Bridegroom's Father's Name"
                SortExpression="bridegroomfathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridefathername" HeaderText="Bride's Father Name" SortExpression="bridefathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomdateofbirth" HeaderText="Bridegroom's Date of Birth"
                SortExpression="bridegroomdateofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridedateofbirth" HeaderText="Bride's Date of Birth" SortExpression="bridedateofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroompresentaddr" HeaderText="Bridegroom's Present Address"
                SortExpression="bridegroompresentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridepresentaddr" HeaderText="Bride's Present Address"
                SortExpression="bridepresentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroompermanentaddr" HeaderText="Bridegroom's Permanent Address"
                SortExpression="bridegroompermanentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridepermanentaddr" HeaderText="Bride's Permanent Address"
                SortExpression="bridepermanentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomvoterno" HeaderText="Bridegroom's Voter no"
                SortExpression="bridegroomvoterno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridevoterno" HeaderText="Bride's Voter no" SortExpression="bridevoterno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroommaritalstatus" HeaderText="Bridegroom's Marital Status"
                SortExpression="bridegroommaritalstatus" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridemaritalstatus" HeaderText="Bride's Marital Status"
                SortExpression="bridemaritalstatus" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofmarriage" HeaderText="Date of Marriage" SortExpression="dateofmarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofmarriage" HeaderText="Place of Marriage" SortExpression="placeofmarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="relationbeforemarriage" HeaderText="Relation before marriage"
                SortExpression="relationbeforemarriage" >
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
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [dateofregistration], [bridegroomname], [bridename], [bridegroomfathername], [bridefathername], [bridegroomdateofbirth], [bridedateofbirth], [bridegroompresentaddr], [bridepresentaddr], [bridegroompermanentaddr], [bridepermanentaddr], [bridegroomvoterno], [bridevoterno], [bridegroommaritalstatus], [bridemaritalstatus], [dateofmarriage], [placeofmarriage], [relationbeforemarriage] FROM [marriage3]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

