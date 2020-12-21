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

    protected void Button7_Click(object sender, EventArgs e)
    {
        String dob = Request.Form.Get("dd");
        String pb = Request.Form.Get("pb");
        String dtadd = Request.Form.Get("dtadd");
        String dtissue = Request.Form.Get("dtissue");
        String dateissue = Request.Form.Get("datefissue");

        if(txtaddress.Text == "" || Txtbank.Text == "" || Txtcash.Text == "" || 
            Txtdd.Text == "" || txtedu.Text == "" || txtemail.Text == "" || 
            txtfathername.Text == "" || txtfee.Text == "" || txtfile.Text == "" || 
            txtheight.Text == "" ||txtmen.Text == "" || txtmomname.Text == "" || 
            Txtname.Text == "" || txtpass.Text == "" || txtpassno.Text == "" || 
            txtpl.Text == "" || txtpla.Text == "" || txtplace.Text == "" || 
            txtplaceappln.Text == "" || txtpmtaddr.Text == "" || Txtprename.Text == "" || 
            txtprof.Text == "" || txtreg.Text == "" || txtspousename.Text == "" || txtvisible.Text == "")
        {
            lbl_msg.Text="Missing Field";
            lbl_msg.Visible=true;
        }
        else
        {
            cmd.CommandText="insert into passport values('" + txtfee.Text + "','" + Txtcash.Text + 
                "','" + Txtbank.Text + "','" + Txtdd.Text + "','" + dob + "','" + Txtname.Text + 
                "','" + Txtprename.Text + "','" + drop_sex.SelectedItem.Value + "','" + pb + 
                "','" + txtplace.Text + "','" + txtfathername.Text + "','" + txtmomname.Text +
                "','" + txtspousename.Text + "','" + txtaddress.Text + "','" + dtadd + "','" + txtpmtaddr.Text +
                "','" + txtemail.Text + "','" + txtpassno.Text + "','" + dtissue + "','" + txtplaceappln.Text + 
                "','" + txtedu.Text + "','" + txtprof.Text + "','" + txtvisible.Text + "','" + txtheight.Text +
                "','" + drop_working.SelectedItem.Value + "','" + txtreg.Text +
                "','" + drop_elibile.SelectedItem.Value + "','" + txtmen.Text + "','" + txtfile .Text + "','" + dateissue + 
                "','" + txtpla.Text + "','" + txtpass.Text + "','" + dateissue + "','" + txtpl.Text + "')";
            cmd.ExecuteNonQuery();
            lbl_msg.Text = "Successfully";
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        Txtbank.Text = "";
        Txtdd.Text   = "";
        txtedu.Text = "";
        txtemail.Text = "";
        txtfathername.Text = "";
        txtfee.Text = "";
        txtfile.Text = "";
        txtheight.Text = "";
        txtmen.Text = "";
        txtmomname.Text = "";
        Txtname.Text = "";
        txtpass.Text = "";
        txtpassno.Text = "";
        txtpl.Text = "";
        txtpla.Text = "";
        txtplace.Text = "";
        txtplaceappln.Text = "";
        txtpmtaddr.Text = "";
        Txtprename.Text = "";
        txtprof.Text = "";
        txtreg.Text = "";
        txtspousename.Text = "";
        txtvisible.Text = "";
        Txtcash.Text = "";
    }
    
}
