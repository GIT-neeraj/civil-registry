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
int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnapp_Click(object sender, EventArgs e)
    {
        String bdob=Request.Form.Get("txtBDOB");
        String dob1=Request.Form.Get("txtBDOB1");
        String dob2=Request.Form.Get("txtBDOB2");
        string test=Request.Form.Get("txtMDate");
        
        if (txtfath.Text == "" || txtfathwife.Text == "" || txtnam.Text == "" ||
            txtnamewife.Text == "" || txtper.Text == "" || txtperwife.Text == "" ||
            txtpre.Text == "" || txtprewife.Text == "" || txtrel.Text == "" ||
            txtsol.Text == "" || txtvote.Text == "" || txtvotewife.Text == "")
        {
            lblmsg.Text = "Missing Fieldds! Please fill all mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText="insert into marriage3 values('" + bdob + "','" + txtnam.Text + 
                "','" + txtnamewife.Text + "','" + txtfath.Text + "','" + txtfathwife.Text + 
                "','" + dob1 + "','" + dob2 + "','" + txtpre.Text + "','" + txtprewife.Text + 
                "','" + txtper.Text + "','" + txtperwife.Text + "','" + txtvote.Text + 
                "','" + txtvotewife.Text + "','" + dpdnmar.SelectedValue + "','" + dpdnmarwife.SelectedValue + "','" + test + "','" + txtsol.Text + "','" + txtrel.Text + "')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "Record Added";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Record failed to Add";
                lblmsg.Visible = true;
            }
        }
       
    }
}
