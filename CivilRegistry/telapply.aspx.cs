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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String fac;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int x;
        fac = "";
        if (chkabbreviated.Checked == true)
        {
            fac += "Abbreviated Dialing" + ",";
        }
        if (chkcallforwarding.Checked == true)
        {
            fac += "Call Forwarding" + ",";
        }
        if (chkcli.Checked == true)
        {
            fac += "CLI" + ",";
        }

        if (chkconference.Checked == true)
        {
            fac += "Conferencing" + ",";

        }

        if (chkhotline.Checked == true)
        {
            fac += "Hotline" + ",";

        }

        if (chkisd.Checked == true)
        {
            fac += "ISD" + ",";
        }

        if (chkstd.Checked == true)
        {
            fac += "STD" + ",";
        }
        if (fac == "")
        {
        }
        else
        {
            fac = fac.Substring(0, fac.Length - 1);
        }

        if (txtaddress.Text == "" || txtbilling.Text == "" || txtcomp.Text == "" || txtdetails.Text == "" ||
            txtemail.Text == "" || txtgphf.Text == "" || txtinstr.Text == "" || txtjoint.Text == "" ||
            txtname.Text == "" || txtnear.Text == "" || txtnominee.Text == "" || txtpan.Text == "" || txtpay.Text == "" ||
            txtpin.Text == "" || txtrelation.Text == "" || txttele.Text == "")
        {
            lblmsg.Text = "Missing Fields! Please fill all the mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {

            cmd.CommandText = "insert into telapply values('" + txtcomp.Text +
                "','" + txtname.Text + "','" + txtjoint.Text + "','" + txtnominee.Text +
                "','" + txtrelation.Text + "','" + txtgphf.Text + "','" + txtpan.Text +
                "','" + txttele.Text + "','" + txtnear.Text + "','" + txtaddress.Text +
                "','" + txtpin.Text + "','" + txtbilling.Text + "','" + txtemail.Text +
                "','" + fac + "','" + txtinstr.Text + "','" + txtpay.Text + "','" + txtdetails.Text + "')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "Registration Completed successfully";
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
        lblmsg.Visible = false;
        txtaddress.Text = "";
        txtbilling.Text = "";
        txtcomp.Text = "";
        txtdetails.Text = "";
        txtemail.Text = "";
        txtgphf.Text = "";
        txtinstr.Text = "";
        txtjoint.Text = "";
        txtname.Text = "";
        txtnear.Text = "";
        txtnominee.Text = "";
        txtpan.Text = "";
        txtpay.Text = "";
        txtpin.Text = "";
        txtrelation.Text = "";
        txttele.Text = "";
    }
}
