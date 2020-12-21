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
    SqlDataReader dr;
    int total;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        if (txtelnam.Text == "" || txtkno.Text == "" || txtloc.Text == "" || txtlocal.Text == "" || txtoccup.Text == "" || txtperad.Text == "" || txttot1.Text == "" || txttot2.Text == "" || txttot3.Text == "" || txttot4.Text == "" || txttot5.Text == "" || txttot6.Text == "" || txttotal.Text == "" || txtwat1.Text == "" || txtwat2.Text == "" || txtwat3.Text == "" || txtwat4.Text == "" || txtwat5.Text == "" || txtwat6.Text == "" || txtcov.Text == "")
        {
            lbl_msg.Text = "Missing Fields! Please fill up all";
            lbl_msg.Visible = true;
        }
        else
        {
            cmd.CommandText = "insert into electricity values('" + txtelnam.Text + "','" + txtoccup.Text + "','" + txtperad.Text + "','" + txtloc.Text + "','" + radio_purpose.SelectedItem.Value + "','" + txtcov.Text + "','" + txtlocal.Text + "','" + txtkno.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "insert into electricity1 values('" + txtelnam.Text + "','" + txtwat1.Text + "','" + txttot1.Text + "','" + txtwat2.Text + "','" + txttot2.Text + "','" + txtwat3.Text + "','" + txttot3.Text + "','" + txtwat4.Text + "','" + txttot4.Text + "','" + txtwat5.Text + "','" + txttot5.Text + "','" + txtwat6.Text + "','" + txttot6.Text + "','" + txttotal.Text + "')";
            cmd.ExecuteNonQuery();
           lbl_msg.Text="Successfully Registered";
            lbl_msg.Visible = true;
        }
    }
    protected void bt_reset_Click(object sender, EventArgs e)
    {
        txtcov.Text = "";
        txtelnam.Text = "";
        txtkno.Text = "";
        txtloc.Text = "";
        txtlocal.Text = "";
        txtoccup.Text = "";
        txtperad.Text = "";
        txttot1.Text = "";
        txttot2.Text = "";
        txttot3.Text = "";
        txttot4.Text = "";
        txttot5.Text = "";
        txttot6.Text = "";
        txttotal.Text = "";
        txtwat1.Text = "";
        txtwat2.Text = "";
        txtwat3.Text = "";
        txtwat4.Text = "";
        txtwat5.Text = "";
        txtwat6.Text = "";
    }
    protected void btnCalc_Click(object sender, EventArgs e)
    {
        
        int y=0;
        if (txttot1.Text == "" || txttot2.Text == "" || txttot3.Text == "" || txttot4.Text == "" || txttot5.Text == "" || txttot6.Text == "")
        {
            txttot1.Text = y.ToString();
            txttot2.Text = y.ToString();
            txttot3.Text = y.ToString();
            txttot4.Text = y.ToString();
            txttot5.Text = y.ToString();
            txttot6.Text = y.ToString();
            txttotal.Text = total.ToString();
        }
        else
        {
            total = Int32.Parse(txttot1.Text) + Int32.Parse(txttot2.Text) + Int32.Parse(txttot3.Text) + Int32.Parse(txttot4.Text) + Int32.Parse(txttot5.Text) + Int32.Parse(txttot6.Text);
            txttotal.Text = total.ToString();
            rdbtncert.Enabled = true;
        }
    }
    protected void rdbtncert_CheckedChanged(object sender, EventArgs e)
    {
        if (rdbtncert.Checked == true)
        {
            btnsub.Enabled = true;
        }

    }
}
