<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminelectricity.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="nameofapplicant"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="Slno" HeaderText="Slno" SortExpression="Slno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofapplicant" HeaderText="Name of Applicant" ReadOnly="True"
                SortExpression="nameofapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="occupation" HeaderText="Occupation" SortExpression="occupation" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="peraddr" HeaderText="Permanent Address" SortExpression="peraddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="locationofsupply" HeaderText="Location of supply" SortExpression="locationofsupply" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="coveredarea" HeaderText="Covered area" SortExpression="coveredarea" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="loaddetails" HeaderText="Load details" SortExpression="loaddetails" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Kno" HeaderText="K no" SortExpression="Kno" >
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
        DeleteCommand="DELETE FROM [electricity] WHERE [nameofapplicant] = @nameofapplicant"
        InsertCommand="INSERT INTO [electricity] ([Slno], [nameofapplicant], [occupation], [peraddr], [locationofsupply], [purpose], [coveredarea], [loaddetails], [Kno]) VALUES (@Slno, @nameofapplicant, @occupation, @peraddr, @locationofsupply, @purpose, @coveredarea, @loaddetails, @Kno)"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [Slno], [nameofapplicant], [occupation], [peraddr], [locationofsupply], [purpose], [coveredarea], [loaddetails], [Kno] FROM [electricity]"
        UpdateCommand="UPDATE [electricity] SET [Slno] = @Slno, [occupation] = @occupation, [peraddr] = @peraddr, [locationofsupply] = @locationofsupply, [purpose] = @purpose, [coveredarea] = @coveredarea, [loaddetails] = @loaddetails, [Kno] = @Kno WHERE [nameofapplicant] = @nameofapplicant">
        <InsertParameters>
            <asp:Parameter Name="Slno" Type="Int32" />
            <asp:Parameter Name="nameofapplicant" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="peraddr" Type="String" />
            <asp:Parameter Name="locationofsupply" Type="String" />
            <asp:Parameter Name="purpose" Type="String" />
            <asp:Parameter Name="coveredarea" Type="String" />
            <asp:Parameter Name="loaddetails" Type="String" />
            <asp:Parameter Name="Kno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Slno" Type="Int32" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="peraddr" Type="String" />
            <asp:Parameter Name="locationofsupply" Type="String" />
            <asp:Parameter Name="purpose" Type="String" />
            <asp:Parameter Name="coveredarea" Type="String" />
            <asp:Parameter Name="loaddetails" Type="String" />
            <asp:Parameter Name="Kno" Type="String" />
            <asp:Parameter Name="nameofapplicant" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="nameofapplicant" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

