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

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    int xx;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
        con.Open();
        cmd= new SqlCommand();
        cmd.Connection = con;
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dob = Request.Form.Get("dob");
        string tdate = Request.Form.Get("date");
        int x;
        if (dob == "" || drop_sex.Text == "" || txtnameofchild.Text == "" ||
            txtnameoffather.Text == "" || txtnameofmother.Text == "" || txtplaceofbirth.Text == "" ||
            txtinformantsname.Text == "" || txtaddressofinformant.Text == "" || tdate == "" ||
            txtnameofvillage.Text == "" || txtnameofdistrict.Text == "" || txtnameofstate.Text == "" ||
            txtreligion.Text == "" || txtofccupation.Text == "" || txtmoccupation.Text == "" ||
            txtmage.Text == "" || txtageatbirthtime.Text == "" || txtmethod.Text == "" || txtweight.Text == "" ||
            txtduration.Text == "")
        {
            lbl_msg.Text = "Missing Fields";
            lbl_msg.Visible = true;
        }
        else
        {
            
            cmd.CommandText = "select max(SlNo) from birthreg";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                xx = dr.GetInt32(0);
                xx = xx + 1;
            }
            dr.Close();
            cmd.CommandText = "insert into birthreg values(" + xx + ",'" + dob + "','" + drop_sex.SelectedValue + "','" + txtnameofchild.Text + "','" + txtnameoffather.Text + "','" + txtnameofmother.Text + "','" + txtplaceofbirth.Text + "','" + txtinformantsname.Text + "','" + txtaddressofinformant.Text + "','" + tdate + "','" + txtnameofvillage + "','" + txtnameofdistrict.Text + "','" + txtnameofstate.Text + "','" + txtreligion.Text + "','" + txtofccupation.Text + "','" + txtmoccupation.Text + "','" + txtageatbirthtime.Text + "','" + txtmage.Text + "','" + txtmethod.Text + "','" + txtweight.Text + "','" + txtduration.Text + "')";
            x=cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lbl_msg.Text = "Registration Successful";
                lbl_msg.Visible = true;
            }

        }
        
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtaddressofinformant.Text = "";
        txtageatbirthtime.Text = "";
        txtduration.Text = "";
        txtinformantsname.Text = "";
        txtmage.Text = "";
        txtmethod.Text = "";
        txtmoccupation.Text = "";
        txtnameofchild.Text = "";
        txtnameofdistrict.Text = "";
        txtnameoffather.Text = "";
        txtnameofmother.Text = "";
        txtnameofstate.Text = "";
        txtnameofvillage.Text = "";
        txtofccupation.Text = "";
        txtplaceofbirth.Text = "";
        txtreligion.Text = "";
        txtweight.Text = "";

    }
}
