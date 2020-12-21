using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class postreplay : System.Web.UI.Page
{
    String postid;
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        if (Request.QueryString["id"]!=null)
        {
            postid = Request.QueryString["id"];
        }
    }

    protected void btnPostReply_Click(object sender, ImageClickEventArgs e)
    {
        String name = txtName.Text;
        String comment = txtComment.Text;
        String email = txtEmail.Text;
        cmd.CommandText = "insert into PostReply values(" + postid + ",'" + name + "','" + comment + 
            "','" + email + "','" + DateTime.Today + "')";
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("forum.aspx?newpost=" + postid);
        }
        else
        {
            lblmsg.Text = "Your comment submission failed";
        }
    }
}
