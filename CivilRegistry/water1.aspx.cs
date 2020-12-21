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
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btncont_Click(object sender, EventArgs e)
    {
        int x;
        if (txtapp.Text == "" || txthus.Text == "" || txtmemo.Text == "" || txtplot.Text == "" || txtpost.Text == "")
        {
            lblmsg.Text = "Missing Fields! Please fill all the mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "insert into water1 values('" + txtapp.Text + "','" + txthus.Text +
                "','" + txtpost.Text + "','" + txtplot.Text + "','" + dpdlown.SelectedValue +
                "','" + dpdlres.SelectedValue + "','" + dpdlinter.Text + "','" + dpdlroad.SelectedValue +
                "','" + txtmemo.Text + "')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "You have regitered successfully";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Registration Failed";
                lblmsg.Visible = true;
            }
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtapp.Text = "";
        txthus.Text = "";
        txtmemo.Text = "";
        txtplot.Text = "";
        txtpost.Text = "";
        txtapp.Focus();
        lblmsg.Visible = false;
    }
}
