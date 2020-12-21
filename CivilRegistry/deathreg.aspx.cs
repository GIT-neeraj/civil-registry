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

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["civilRegDB"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dob = Request.Form.Get("dob");
        String sex;
        String status;
        
        if(rtbnyes.Checked==true)
        {
            status="Yes";
        }
        else
        {
            status="No";
        }
        if(rtbnmale.Checked==true)
        {
            sex="Male";
        }
        else
        {
            sex="Female";
        }
        if(txtage.Text=="" || txtattention.Text=="" || txtdeathplace.Text=="" || txtdeceased.Text=="" || 
            txtdesease.Text=="" || txtdistrict.Text=="" || txtinformantadd.Text=="" || txtinformantname.Text=="" ||
            txtoccupation.Text=="" || txtrelativename.Text=="" || txtreligion.Text=="" || txtstate.Text=="" ||
            txttown.Text=="")
        {
            lblmsg.Text = "Missing Fields! Please fill all the mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "select max(SlNo) from death";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            }
            dr.Close();
        cmd.CommandText = "INSERT INTO death VALUES(" + x + ",'" + dob + "','" + txtdeceased.Text +
            "','" + txtrelativename.Text + "','" + sex + "','" + txtage.Text + "','" + txtdeathplace.Text +
            "','" + txtinformantname.Text + "','" + txtinformantadd.Text + "','" + txttown.Text +
            "','" + txtdistrict.Text + "','" + txtstate.Text +
            "','" + txtreligion.Text + "','" + txtoccupation.Text + "','" + status + "','" + txtdesease.Text + "')";
        x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            lblmsg.Text = "Death Registration Completed Successfully";
            lblmsg.Visible = true;
        }
        else
        {
            lblmsg.Text = "Death Registration Failed! Pleae try again";
            lblmsg.Visible = true;
        }
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        txtage.Text = "";
        txtattention.Text = "";
        txtdeathplace.Text = "";
        txtdeceased.Text = "";
        txtdesease.Text = "";
        txtdistrict.Text = "";
        txtinformantadd.Text = "";
        txtinformantname.Text = "";
        txtoccupation.Text = "";
        txtrelativename.Text = "";
        txtreligion.Text = "";
        txtstate.Text = "";
        txttown.Text = "";
        rtbnmale.Checked = true;
        rbtnfemale.Checked = false;
        rtbnyes.Checked = true;
        rtbnno.Checked = false;
    }
}
