<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminpassport.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
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
            <asp:BoundField DataField="fee" HeaderText="Fee" SortExpression="fee" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="cashordd" HeaderText="Cash or DD" SortExpression="cashordd" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bankcode" HeaderText="Bank Code" SortExpression="bankcode" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="ddno" HeaderText="DD No" SortExpression="ddno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofissueofdd" HeaderText="Date of issue of DD" SortExpression="dateofissueofdd" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofapplicant" HeaderText="Name of Applicant" SortExpression="nameofapplicant" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="changedname" HeaderText="Changed Name" SortExpression="changedname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofbirth" HeaderText="Date of Birth" SortExpression="dateofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofbirth" HeaderText="Place of Birth" SortExpression="placeofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fathername" HeaderText="Father's Name" SortExpression="fathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="mothername" HeaderText="Mother's Name" SortExpression="mothername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="spousename" HeaderText="Spouse's Name" SortExpression="spousename" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="presentaddr" HeaderText="Present Address" SortExpression="presentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="datesinceresiding" HeaderText="Date since residing" SortExpression="datesinceresiding" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="peraddr" HeaderText="Permenant Address" SortExpression="peraddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fileno" HeaderText="File no" SortExpression="fileno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofapplication" HeaderText="Date of Application" SortExpression="dateofapplication" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofapplication" HeaderText="Place of Application"
                SortExpression="placeofapplication" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="educationqualification" HeaderText="Educational Qualification"
                SortExpression="educationqualification" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="profession" HeaderText="Profession" SortExpression="profession" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="visiblemark" HeaderText="Visible Mark" SortExpression="visiblemark" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="workingincentralorstategovt" HeaderText="Working in Central or State Government"
                SortExpression="workingincentralorstategovt" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Citizenofindia" HeaderText="Citizen of India" SortExpression="Citizenofindia" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="emigrationcheckout" HeaderText="Emigration checkout" SortExpression="emigrationcheckout" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="eligiblecategory" HeaderText="Eligible Category" SortExpression="eligiblecategory" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="motherfileno" HeaderText="Mother's File no" SortExpression="motherfileno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="motherdateofissue" HeaderText="Mother's Date of issue"
                SortExpression="motherdateofissue" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="motherplaceofissue" HeaderText="Mother's Place of issue"
                SortExpression="motherplaceofissue" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherfileno" HeaderText="Father's File no" SortExpression="fatherfileno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherdateofissue" HeaderText="Father's Date of issue"
                SortExpression="fatherdateofissue" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherplaceofissue" HeaderText="Father's Place of issue"
                SortExpression="fatherplaceofissue" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.PNG" HeaderText="Delete"
                ShowDeleteButton="True" >
                <HeaderStyle Wrap="False" />
            </asp:CommandField>
        </Columns>
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:civilRegDB %>"
        ProviderName="<%$ ConnectionStrings:civilRegDB.ProviderName %>" SelectCommand="SELECT [SlNo], [fee], [cashordd], [bankcode], [ddno], [dateofissueofdd], [nameofapplicant], [changedname], [sex], [dateofbirth], [placeofbirth], [fathername], [mothername], [spousename], [presentaddr], [datesinceresiding], [peraddr], [email], [fileno], [dateofapplication], [placeofapplication], [educationqualification], [profession], [visiblemark], [height], [workingincentralorstategovt], [Citizenofindia], [emigrationcheckout], [eligiblecategory], [motherfileno], [motherdateofissue], [motherplaceofissue], [fatherfileno], [fatherdateofissue], [fatherplaceofissue] FROM [passport]">
    </asp:SqlDataSource>
    </div>
</asp:Content>

