<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminregistration.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="username"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="username" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location">
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        DeleteCommand="DELETE FROM [registration] WHERE [username] = @username" InsertCommand="INSERT INTO [registration] ([SlNo], [firstname], [lastname], [username], [password], [email], [location]) VALUES (@SlNo, @firstname, @lastname, @username, @password, @email, @location)"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [firstname], [lastname], [username], [password], [email], [location] FROM [registration]"
        UpdateCommand="UPDATE [registration] SET [SlNo] = @SlNo, [firstname] = @firstname, [lastname] = @lastname, [password] = @password, [email] = @email, [location] = @location WHERE [username] = @username">
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="location" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="username" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

