<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewcomments.aspx.cs" Inherits="viewcomments" MasterPageFile="~/masterhome.master" %>

<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient"%>
<%@ Import Namespace="System.Data"%>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="float:right; margin-right:25px">
<%
    String postid=Request.QueryString["id"];
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    String name = "", email = "", postdate = "", desc = "";
    da = new SqlDataAdapter("select * from PostReply where PostID=" + postid, ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
    da.Fill(ds);
    double totalcomments = ds.Tables[0].Rows.Count;
    double tmp = totalcomments / 10;
    int pages = (int)Math.Ceiling(tmp);

    int curpage;
    if (Request.QueryString["page"] == null)
    {
        curpage = 1;
    }
    else
    {
        curpage = Int32.Parse(Request.QueryString["page"]);
    }
    int startindex = 0;
    int lastindex = 10 * curpage;
    if (pages > 0)
    {
        Response.Write("Page ");
        for (int i = 1; i <= pages; i++)
        {
            if (curpage == i)
            {
                Response.Write("<span style='text-decoration:underline; font-weight:bold'>" + i + "</span>&nbsp");
            }
            else
            {
                Response.Write("<a href=viewcomments.aspx?id=" + postid + "&page=" + i + ">" + i + "</a>&nbsp");
            }
        }
        if (curpage == pages)
        {
            lastindex = ds.Tables[0].Rows.Count;
        }

        if (pages > 0)
        {
            startindex = (5 * (curpage - 1));
        }
    }//if closed
%>
</div>
    <table style="width: 675px; ">
        <tr style="background:#FFD9B3">
            <td colspan="3">
                Comments</td>
        </tr>
        <%
            if (pages > 0)
            {
                for (int i = startindex; i < lastindex; i++)
                {
                    DataRow drow = ds.Tables[0].Rows[i];
                    name = drow["Name"].ToString();
                    desc = drow["Description"].ToString();
                    email = drow["Email"].ToString();
                    DateTime dt = Convert.ToDateTime(drow["ReplyDate"].ToString());
                    postdate = dt.ToString("dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
        %>   
        <tr>
            <td colspan="3" style="height: 21px">Comment:<span style="font-weight:bold"><%=i+1 %></span></td>
        </tr>     
        <tr style="background:#E7E7E7; height:auto">
            <td colspan="3"><textarea  style="width: 675px; height:100px" ><%=desc %></textarea></td>
        </tr>
        <tr style="background:#F7CCEE">
            <td style="width: 100px; height: 21px">
                Comment by<br /><span style="font-weight:bold"><%=name %></span></td>
            <td style="width: 100px; height: 21px">
                Comment date<br /><span style="font-weight:bold"><%=postdate %></span></td>
            <td style="width: 100px; height: 21px">
                E-mail<br /><span style="font-weight:bold"><%=email %></span></td>
        </tr>        
        <%
            }//foreach loop closed
        }//if closed
        else
          {
            %>
            <tr>
            <td colspan="2">No results found </td>
            </tr>
            <%         
          }
                %>
    </table>

</asp:Content>

