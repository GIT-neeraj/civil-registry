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
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        if (txnewna.Text == "" || txtdif.Text == "" || txtemail.Text == "" || txtmob.Text == "" || txtna.Text == "" || txtnewadd.Text == "" || txtpan.Text == "" || txtpan2.Text == "" || txtres.Text == "" || txtstate.Text == "" || txttel.Text == "")
        {
            lbl_msg.Text = "Missing Fields";
            lbl_msg.Visible = true;
        }
        else
        {
            cmd.CommandText = "insert into namechange values('" + drop_title.SelectedItem.Value + "','" + txtpan.Text + "','" + txtna.Text + "','" + DropDownList2.SelectedItem.Value + "','" + txnewna.Text + "','" + drop_nation.SelectedItem.Value + "','" + drop_status.SelectedItem.Value + "','" + txtpan2.Text + "','" + txtnewadd.Text + "','" + txtstate + "','" + txt_country.Text + "','" + drop_address.SelectedItem.Value + "','" + txtres.Text + "','" + txtemail.Text + "','" + txttel.Text + "','" + txtmob.Text + "','" + txtdif.Text + "','" + drop_income.SelectedItem.Value + "','" + drop_occu.SelectedItem.Value + "','" + drop_addition.SelectedItem.Value + "')";
            cmd.ExecuteNonQuery();
            lbl_msg.Text = "Successfully";
            lbl_msg.Visible = true;
        }
    }
    protected void btnres_Click(object sender, EventArgs e)
    {
        txnewna.Text = "";
        txt_country.Text = "";
        txtdif.Text = "";
        txtemail.Text = "";
        txtmob.Text = "";
        txtna.Text = "";
        txtnewadd.Text = "";
        txtpan.Text="";
        txtpan2.Text="";
        txtres.Text="";
        txtstate.Text="";
        txttel.Text="";
    }
}
