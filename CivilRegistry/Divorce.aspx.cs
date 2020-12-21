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
    SqlDataReader dr;
    int xx;
    int x;
    string who;
    string w;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void txtphone_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void btnsub_Click(object sender, EventArgs e)
    {
        string dob=Request.Form.Get("dob");
        string dob1=Request.Form.Get("dob1");;
        string dob2=Request.Form.Get("dob2");;

        if (rdbtnhus.Checked == true)
        {
            who = "Husband";
        }
        else if (rdbtnwife.Checked == true)
        {
            who = "Wife";
        }
        else
        {
            who = "Both";
        }
        if(rdbtn18yes.Checked==true)
        {
            w="Yes";
        }
        else
        {
            w="No";
        }
        
        if (txtchlidname.Text == "" || txtmarplace.Text == "" || txtchlidname.Text == "" || txttime.Text == "" ||
            txtfin.Text == "" || txthealth.Text == "" || txtedu.Text == "")
        {
            lblmsg.Text = "Missing Fields! Please fill all mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "select max(SlNo) from divorcecommon";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            }
            dr.Close();
            cmd.CommandText = "insert into divorcecommon values(" + xx + ",'" + who + "','" + dob +
                "','" + txtmarplace.Text + "','" + dpdnchild.SelectedValue + "','" + w +
                "','" + DropDownList1.SelectedValue + "','" + txtchlidname.Text +
                "','" + txttime.Text + "','" + txtfin.Text + "','" + txthealth.Text +
                "','" + txtedu.Text + "')";
            x = cmd.ExecuteNonQuery();

            cmd.CommandText = "insert into divorcehusband values(" + xx + ",'" + txt_husfamily.Text +
                "','" + txt_husname.Text + "','" + dob1 + "','" + txt_country.Text +
                "','" + txt_occupation.Text + "','" + txt_addr.Text +
                "','" + dpdnservice.SelectedValue + "','" + txtlawyername.Text +
                "','" + txtfirm.Text + "','" + txtcode.Text + "','" + txtphone.Text +
                "','" + txtfax.Text + "','" + txtemail.Text + "')";
            cmd.ExecuteNonQuery();

            cmd.CommandText = "insert into divorcewife values(" + xx + ",'" + txt_wifefamily.Text +
                "','" + txt_wifename + "','" + dob2 + "','" + txt_countrywife.Text +
                "','" + txt_occupationwife.Text + "','" + txt_addrwife + "','" + dpdnwifeser.SelectedValue +
                "','" + txtwifeslawyer + "','" + txtfirmwife + "','" + txtcodewife +
                "','" + txtphonewife.Text + "','" + txtfaxwife.Text + "','" + txtemailwife.Text + "')";

            if (x > 0)
            {
                lblmsg.Text = "Registration Completed";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Registration Failed";
                lblmsg.Visible = true;
            }
        }
    }
}
