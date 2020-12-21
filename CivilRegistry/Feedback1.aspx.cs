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


public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int x;
        if(txtadr.Text=="" || txtarea.Text=="" || txtcity.Text=="" || txtcomp.Text=="" ||
            txtcon.Text=="" || txtdes.Text=="" || txtdes.Text=="" || txtmail.Text=="" || 
            txtnafed.Text=="" || txtpin.Text=="" || txtquery.Text=="" || txtstate.Text=="")
        {
            lblmsg.Text="Missing Fields! Please fill all the mandatory fields";
            lblmsg.Visible=true;
        }
        else
        {
        cmd.CommandText = "INSERT INTO Feedback VALUES('" + txtnafed.Text + "','" + txtdes.Text + "','" + txtcomp.Text + "','" + txtarea.Text + "','" + txtadr.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcon.Text + "','" + txtpin.Text + "','" + txtmail.Text + "','" + txttel.Text + "','" + txtfax.Text + "','" + txtquery.Text + "')";
        x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            lblmsg.Text="Feedback posted Successfully!";
            lblmsg.Visible=true;
        }
        else
        {
            lblmsg.Text="Failed to post Feedback! Please try again";
            lblmsg.Visible=true;
        }
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        txtadr.Text = "";
        txtarea.Text = "";
        txtcity.Text = "";
        txtcomp.Text = "";
        txtcon.Text = "";
        txtdes.Text = "";
        txtfax.Text = "";
        txtmail.Text = "";
        txtnafed.Text = "";
        txtpin.Text="";
        txtquery.Text="";
        txtstate.Text="";
        txttel.Text="";
        txtnafed.Focus();
    }
}
