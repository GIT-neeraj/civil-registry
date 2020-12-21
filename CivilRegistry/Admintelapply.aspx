<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admintelapply.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" SortExpression="SlNo">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="companyororganisation" HeaderText="Company or Organisation"
                SortExpression="companyororganisation">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofcustomerorcomp" HeaderText="Name of Customer or Company"
                SortExpression="nameofcustomerorcomp">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofjointapplication" HeaderText="Name of Joint Application"
                SortExpression="nameofjointapplication">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofnominee" HeaderText="Name of Nominee" SortExpression="nameofnominee">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="relationship" HeaderText="Relationship" SortExpression="relationship">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameoffatherorhusorpartner" HeaderText="Name of Father or Husband or Partner"
                SortExpression="nameoffatherorhusorpartner">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="panno" HeaderText="Pan no" SortExpression="panno">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="workingtelephoneno" HeaderText="Working Telephone no"
                SortExpression="workingtelephoneno">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nearesttelephno" HeaderText="Nearest Telephone no" SortExpression="nearesttelephno">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="postaladdr" HeaderText="Postal Address" SortExpression="postaladdr">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="billingaddr" HeaderText="Billing Address" SortExpression="billingaddr">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="facilitiesrequired" HeaderText="Facilities Required" SortExpression="facilitiesrequired">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="telephinstrument" HeaderText="Telephone instrument" SortExpression="telephinstrument">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="paymentmode" HeaderText="Payment Mode" SortExpression="paymentmode">
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="paymentdetails" HeaderText="Payment Details" SortExpression="paymentdetails">
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
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [companyororganisation], [nameofcustomerorcomp], [nameofjointapplication], [nameofnominee], [relationship], [nameoffatherorhusorpartner], [panno], [workingtelephoneno], [nearesttelephno], [postaladdr], [pincode], [billingaddr], [email], [facilitiesrequired], [telephinstrument], [paymentmode], [paymentdetails] FROM [telapply]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

