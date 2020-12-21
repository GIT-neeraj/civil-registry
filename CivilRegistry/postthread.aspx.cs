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

public partial class postthread : System.Web.UI.Page
{
    String _sql;
    SqlConnection _con = null;
    SqlCommand _cmd = null;
    SqlDataReader _dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        _con = new SqlConnection(ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
        _con.Open();
        _cmd = new SqlCommand();
        _cmd.Connection = _con;
    }
    protected void btnPostThread_Click(object sender, ImageClickEventArgs e)
    {
        int threadid = 0;
        try
        {
            _cmd.CommandText = "select count(*) from  Forumthread";
            _dr = _cmd.ExecuteReader();
            if (_dr.Read())
            {
                threadid=_dr.GetInt32(0) + 1;
            }
            _dr.Close();
            String _name = txtName.Text;
            String _email = txtEmail.Text;
            String _desc = txtDesc.Text;
            _sql = "Insert into Forumthread values(@threadid,@name,@email,@desc,@date)";
            _cmd.CommandText = _sql;
            _cmd.Parameters.AddWithValue("@threadid", threadid );
            _cmd.Parameters.AddWithValue("@name", _name);
            _cmd.Parameters.AddWithValue("@email", _email);
            _cmd.Parameters.AddWithValue("@desc", _desc);
            _cmd.Parameters.AddWithValue("@date", DateTime.Now);
            _cmd.ExecuteNonQuery();
            lblmsg.Text="New thread posted (" + DateTime.Now + ") by " + _name;
            txtName.Text=null;
            txtEmail.Text=null;
            txtDesc.Text=null;
        }
        catch (Exception ex)
        {
            Response.Redirect("errorpage.aspx?id=db&desc=" + ex.Message);
        }
    }
}
