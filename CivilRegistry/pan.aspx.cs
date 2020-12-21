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

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        string dob = Request.Form.Get("dob");
        int x;
        if (txtAddress.Text == "" || txtAddressRep.Text == "" || txtCardname.Text == "" || txtFname.Text == "" ||
            txtname.Text == "" || txtOffAddress.Text == "")
        {
            lblmsg.Text = "Missing Fields! Please fill all mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "insert into pan values('" + txtname.Text + "','" + txtCardname.Text +
                "','" + txtFname.Text + "','" + txtAddress.Text + "','" + txtOffAddress.Text + "','" + drpsex.SelectedValue +
                "' ,'" + drpStat.SelectedValue + "','" + dob + "','" + txtRegNo.Text + "','" + drpCitizen.SelectedValue +
                "' ,'" + txtAddressRep.Text + "')";
            x=cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "Successfully Registered";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Registration Failed";
                lblmsg.Visible = true;
            }

        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        lblmsg.Visible=false;
        txtAddress.Text = "";
        txtAddressRep.Text = "";
        txtCardname.Text = "";
        txtFname.Text = "";
        txtname.Text = "";
        txtOffAddress.Text = "";
        txtRegNo.Text = "";
        
    }
}
