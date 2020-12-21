<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="forum" MasterPageFile="~/AdminMaster.master" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient"%>
<%@ Import Namespace="System.Data"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="50px" Width="646px">
    <div style="font-weight:bold; color:red; margin-top:20px">
    <%
        if (Request.QueryString["newpost"] != null)
        {
            Response.Write("Your reply is submitted");
        }
    %>
    </div>
    <div style="float:right; margin-right:25px">
    <%
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
        con.Open();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        String name = "", email = "", postdate = "", desc = "", postid = "";
        da = new SqlDataAdapter("select * from forumthread", con);
        da.Fill(ds);
        Double cnt = ds.Tables[0].Rows.Count ;
        double d = cnt / 5;
        int pages = (int)Math.Ceiling(d);
        int curpage;
        
        if (Request.QueryString["page"] == null)
        {
            curpage = 1;
        }
        else
        {
            curpage = Int32.Parse(Request.QueryString["page"]);
        }

        int last = curpage * 5;
        int start=0;
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
                    Response.Write("<a href=forumadmin.aspx?page=" + i + ">" + i + "</a>&nbsp");
                }
            }

           
            if (curpage == pages)
            {
                last = ds.Tables[0].Rows.Count;
            }
            
            if (pages>0)
            {
                start = (5 * (curpage - 1));
            }
        }//if closed
    %>
    </div>
        <table style="width: 687px; margin-top:15px; border:#666666; border:thin; border-style:double">
            <tr >
                <td style="height: 21px; text-align:right " colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium"
                        ForeColor="#C000C0" NavigateUrl="~/postthreadadmin.aspx">Post thread</asp:HyperLink></td>
            </tr>
            <%  
                if (pages > 0)
                {
                    for (int i = start; i < last; i++)
                    //foreach (DataRow drow in ds.Tables[0].Rows)
                    {
                        DataRow drow = ds.Tables[0].Rows[i];
                        postid = drow["PostID"].ToString();
                        name = drow["Name"].ToString();
                        email = drow["Email"].ToString();
                        DateTime dt = Convert.ToDateTime(drow["PostDate"].ToString());
                        postdate = dt.ToString("dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                        desc = drow["Description"].ToString();
                 %>
            <tr style="background:#FAEFF7">
                <td style="width: 1px; height: 21px">
                    <table style="width: 203px">
                        <tr>
                            <td style="height: 21px">Post ID :<%=postid%>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height: 21px;">Posted by:<%=name%>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height: 21px">Email:<%=email%>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height: 21px;"> Date:<%=postdate%>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 21px">
                                <a href="postreplayadmin.aspx?id=<%=postid %>" style="border:none">
                                <img src="images/quote.gif" alt="quote" style="border:none" /></a>
                                
                                </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 450px; height: 21px" valign="top">
                <%=desc%>
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                <%
                    SqlCommand cmd=new SqlCommand("select count(*) from PostReply where PostId=" + postid,con);
                     SqlDataReader dr=cmd.ExecuteReader();
                     int cmtcount=0;
                        if (dr.Read())
                        {
                            cmtcount=dr.GetInt32(0);
                        }
                        dr.Close();    
                 %>
                <span style="float:left">Total Commnets &nbsp;<%=cmtcount %></span>
                <span style="float:right">
                <a href="viewcommentsadmin.aspx?id=<%=postid %>" style="border:none; float:right">
                                <img src="images/viewcmt.png" alt="quote" style="border:none" /></a></span>
                    :
                </td>
            </tr>
            <%}

          }
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
    </asp:Panel>

</asp:Content>
