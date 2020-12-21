<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminrationcard.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SNo"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="SNo" HeaderText="SNo" ReadOnly="True" SortExpression="SNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofapplicant" HeaderText="Name of Applicant" SortExpression="nameofapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fathersname" HeaderText="Father's Name" SortExpression="fathersname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="presentaddr" HeaderText="Present Address" SortExpression="presentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="permanentaddr" HeaderText="Permanent Address" SortExpression="permanentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="occupation" HeaderText="Occupation" SortExpression="occupation" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofemployer" HeaderText="Name of Employer" SortExpression="nameofemployer" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="adults" HeaderText="Adults" SortExpression="adults" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="minor" HeaderText="Minor" SortExpression="minor" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="electrolno" HeaderText="Electrol no" SortExpression="electrolno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="tradingLiscence" HeaderText="Trading Liscence" SortExpression="tradingLiscence" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lpgConsumer" HeaderText="LPG Consumer" SortExpression="lpgConsumer" >
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
        DeleteCommand="DELETE FROM [rationcard] WHERE [SNo] = @SNo" InsertCommand="INSERT INTO [rationcard] ([SNo], [nameofapplicant], [fathersname], [presentaddr], [permanentaddr], [occupation], [nameofemployer], [adults], [minor], [electrolno], [tradingLiscence], [lpgConsumer]) VALUES (@SNo, @nameofapplicant, @fathersname, @presentaddr, @permanentaddr, @occupation, @nameofemployer, @adults, @minor, @electrolno, @tradingLiscence, @lpgConsumer)"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SNo], [nameofapplicant], [fathersname], [presentaddr], [permanentaddr], [occupation], [nameofemployer], [adults], [minor], [electrolno], [tradingLiscence], [lpgConsumer] FROM [rationcard]"
        UpdateCommand="UPDATE [rationcard] SET [nameofapplicant] = @nameofapplicant, [fathersname] = @fathersname, [presentaddr] = @presentaddr, [permanentaddr] = @permanentaddr, [occupation] = @occupation, [nameofemployer] = @nameofemployer, [adults] = @adults, [minor] = @minor, [electrolno] = @electrolno, [tradingLiscence] = @tradingLiscence, [lpgConsumer] = @lpgConsumer WHERE [SNo] = @SNo">
        <InsertParameters>
            <asp:Parameter Name="SNo" Type="Int32" />
            <asp:Parameter Name="nameofapplicant" Type="String" />
            <asp:Parameter Name="fathersname" Type="String" />
            <asp:Parameter Name="presentaddr" Type="String" />
            <asp:Parameter Name="permanentaddr" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="nameofemployer" Type="String" />
            <asp:Parameter Name="adults" Type="String" />
            <asp:Parameter Name="minor" Type="String" />
            <asp:Parameter Name="electrolno" Type="String" />
            <asp:Parameter Name="tradingLiscence" Type="String" />
            <asp:Parameter Name="lpgConsumer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nameofapplicant" Type="String" />
            <asp:Parameter Name="fathersname" Type="String" />
            <asp:Parameter Name="presentaddr" Type="String" />
            <asp:Parameter Name="permanentaddr" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="nameofemployer" Type="String" />
            <asp:Parameter Name="adults" Type="String" />
            <asp:Parameter Name="minor" Type="String" />
            <asp:Parameter Name="electrolno" Type="String" />
            <asp:Parameter Name="tradingLiscence" Type="String" />
            <asp:Parameter Name="lpgConsumer" Type="String" />
            <asp:Parameter Name="SNo" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="SNo" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

