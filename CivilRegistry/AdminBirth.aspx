<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminBirth.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
<div style="overflow:scroll; width:530px; height: 282px;">
    &nbsp;
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SlNo"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
         OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" ReadOnly="True" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofchild" HeaderText="Name of Child" SortExpression="nameofchild" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherssname" HeaderText="Father's Name" SortExpression="fatherssname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="mothersname" HeaderText="Mother's Name" SortExpression="mothersname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofbirth" HeaderText="Place of Birth" SortExpression="placeofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="informername" HeaderText="Informer Name" SortExpression="informername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="addresofinfo" HeaderText="Address" SortExpression="addresofinfo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofinfo" HeaderText="Date of information" SortExpression="dateofinfo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fathersoccu" HeaderText="Father's occupation" SortExpression="fathersoccu" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="momoccu" HeaderText="Mother's occupation" SortExpression="momoccu" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="momsageatmarriage" HeaderText="Mom's age at marriage"
                SortExpression="momsageatmarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="momsageatdelivery" HeaderText="Mom's age at delivery"
                SortExpression="momsageatdelivery" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="methodeofdelivery" HeaderText="Method of delivery" SortExpression="methodeofdelivery" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="birthwt" HeaderText="Birth Weight" SortExpression="birthwt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="pregnancyduration" HeaderText="Pregnancy Duration" SortExpression="pregnancyduration" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.PNG" HeaderText="Delete"
                ShowDeleteButton="True" >
                <HeaderStyle Wrap="False" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.PNG"
                EditImageUrl="~/images/busreport.PNG" HeaderText="Edit" ShowEditButton="True"
                UpdateImageUrl="~/images/save.PNG" />
        </Columns>
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle Wrap="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        DeleteCommand="DELETE FROM [birthreg] WHERE [SlNo] = @SlNo" InsertCommand="INSERT INTO [birthreg] ([SlNo], [dob], [sex], [nameofchild], [fatherssname], [mothersname], [placeofbirth], [informername], [addresofinfo], [dateofinfo], [nameoftown/village], [district], [state], [religion], [fathersoccu], [momoccu], [momsageatmarriage], [momsageatdelivery], [methodeofdelivery], [birthwt], [pregnancyduration]) VALUES (@SlNo, @dob, @sex, @nameofchild, @fatherssname, @mothersname, @placeofbirth, @informername, @addresofinfo, @dateofinfo, @column1, @district, @state, @religion, @fathersoccu, @momoccu, @momsageatmarriage, @momsageatdelivery, @methodeofdelivery, @birthwt, @pregnancyduration)"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [dob], [sex], [nameofchild], [fatherssname], [mothersname], [placeofbirth], [informername], [addresofinfo], [dateofinfo], [nameoftown/village] AS column1, [district], [state], [religion], [fathersoccu], [momoccu], [momsageatmarriage], [momsageatdelivery], [methodeofdelivery], [birthwt], [pregnancyduration] FROM [birthreg]"
        UpdateCommand="UPDATE [birthreg] SET [dob] = @dob, [sex] = @sex, [nameofchild] = @nameofchild, [fatherssname] = @fatherssname, [mothersname] = @mothersname, [placeofbirth] = @placeofbirth, [informername] = @informername, [addresofinfo] = @addresofinfo, [dateofinfo] = @dateofinfo, [nameoftown/village] = @column1, [district] = @district, [state] = @state, [religion] = @religion, [fathersoccu] = @fathersoccu, [momoccu] = @momoccu, [momsageatmarriage] = @momsageatmarriage, [momsageatdelivery] = @momsageatdelivery, [methodeofdelivery] = @methodeofdelivery, [birthwt] = @birthwt, [pregnancyduration] = @pregnancyduration WHERE [SlNo] = @SlNo">
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="nameofchild" Type="String" />
            <asp:Parameter Name="fatherssname" Type="String" />
            <asp:Parameter Name="mothersname" Type="String" />
            <asp:Parameter Name="placeofbirth" Type="String" />
            <asp:Parameter Name="informername" Type="String" />
            <asp:Parameter Name="addresofinfo" Type="String" />
            <asp:Parameter Name="dateofinfo" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="religion" Type="String" />
            <asp:Parameter Name="fathersoccu" Type="String" />
            <asp:Parameter Name="momoccu" Type="String" />
            <asp:Parameter Name="momsageatmarriage" Type="String" />
            <asp:Parameter Name="momsageatdelivery" Type="String" />
            <asp:Parameter Name="methodeofdelivery" Type="String" />
            <asp:Parameter Name="birthwt" Type="String" />
            <asp:Parameter Name="pregnancyduration" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="nameofchild" Type="String" />
            <asp:Parameter Name="fatherssname" Type="String" />
            <asp:Parameter Name="mothersname" Type="String" />
            <asp:Parameter Name="placeofbirth" Type="String" />
            <asp:Parameter Name="informername" Type="String" />
            <asp:Parameter Name="addresofinfo" Type="String" />
            <asp:Parameter Name="dateofinfo" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="religion" Type="String" />
            <asp:Parameter Name="fathersoccu" Type="String" />
            <asp:Parameter Name="momoccu" Type="String" />
            <asp:Parameter Name="momsageatmarriage" Type="String" />
            <asp:Parameter Name="momsageatdelivery" Type="String" />
            <asp:Parameter Name="methodeofdelivery" Type="String" />
            <asp:Parameter Name="birthwt" Type="String" />
            <asp:Parameter Name="pregnancyduration" Type="String" />
            <asp:Parameter Name="SlNo" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>


</div>

</asp:Content>

