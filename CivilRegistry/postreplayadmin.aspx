<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postreplayadmin.aspx.cs" Inherits="postreplay" MasterPageFile="~/AdminMaster.master"%>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        String postid = Request.QueryString["id"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
        con.Open();
        String sql = "select * from Forumthread where PostID=" + postid;
        SqlDataAdapter da=new SqlDataAdapter(sql,con);        
        DataSet ds=new DataSet();
        da.Fill(ds);
        DataRow drow = ds.Tables[0].Rows[0];
        String name = drow["Name"].ToString();
        String desc = drow["Description"].ToString();
        DateTime dt = Convert.ToDateTime(drow["PostDate"].ToString());
        String postdate = dt.ToString("dd/MM/yyyy",System.Globalization.CultureInfo.InvariantCulture );
        String mailid = drow["Email"].ToString();
     %>
    <table style="width: 683px; height: 42px">
        <tr style="background:#FFD9B3">
            <td style="width: 122px" >
                Post Id <span style="color:red; font-size:14px; font-weight:bold"><%=postid %></span>
            </td>
            <td style="width: 358px" >
                Posted by &nbsp;<span style="color:red; font-size:14px;font-weight:bold"><%=name %></span></td>
            <td style=" text-align:left">
                Posted on &nbsp;<span style="color:red; font-size:14px;font-weight:bold"><%=postdate %></span>
            
            </td>
        </tr>
        <tr style="background:#DEDFE7">
            <td colspan="3" style="height: 51px" valign="top"><%=desc %> </td>
        </tr>
        <tr>
            <td style="width: 122px">
            </td>
            <td style="width: 358px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 122px"  >
                Your name</td>
            <td style="width: 358px" >
                <asp:TextBox ID="txtName" runat="server" Width="366px"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name cannot be empty"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 122px" valign="top"  >
                Your comment</td>
            <td style="width: 358px" >
                <asp:TextBox ID="txtComment" runat="server" Height="90px" TextMode="MultiLine" Width="369px"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComment"
                    ErrorMessage="Comment is empty"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 122px; height: 26px;" valign="top">
                Your Email id</td>
            <td style="width: 358px; height: 26px;">
                <asp:TextBox ID="txtEmail" runat="server" Width="366px"></asp:TextBox></td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email id required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 122px" valign="top">
            </td>
            <td style="width: 358px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email id format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="231px"></asp:RegularExpressionValidator></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 122px" >
            <%
                if (Session["admin"] != null)
                {
            %>
                <a href="mailer1.aspx?id=<%=mailid %>" style ="font-weight:bold; font-size:16px; text-decoration:none; color:AppWorkspace" >Send mail</a>
            <%} %>        
            </td>
            <td style="width: 358px; text-align:right" >
                <asp:ImageButton ID="btnPostReply" runat="server" ImageUrl="~/images/postreplay.gif" OnClick="btnPostReply_Click"  /></td>
            <td >
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
            </td>
            <td style="width: 358px; text-align: right">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF8080"></asp:Label></td>
        </tr>
    </table>

</asp:Content>
