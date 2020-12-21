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


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=BIRTH;Data Source=ZINNIA-5D34E5AC");
        con.Open();
        string lab;
        if (btnmale.Checked )
            lab=btnmale.Text ;
        else 
            lab=btnfemale .Text ;
        SqlCommand cmd = new SqlCommand("insert into voter values('" + txtvot.Text + "','" + txtsur.Text + "'," + txtage.Text + ",'" + lab + "','" + txtplace.Text + "','" + dpdlbirth.SelectedValue + "','" + txtdist.Text + "','" + txtstate.Text + "','" + txtaddress .Text + "')", con);
        cmd.ExecuteNonQuery();

    }
}
