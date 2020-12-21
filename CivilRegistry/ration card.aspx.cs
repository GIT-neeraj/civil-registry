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
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            btn_submit.Enabled = true;
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cmd.CommandText="select max(SNo) from rationcard";
        dr=cmd.ExecuteReader();
        if(dr.Read())
        {
            xx=dr.GetInt32(0);
            xx=xx+1;
        }
        dr.Close();

        if (txt_nameappln.Text == "" || txt_fathersname.Text == "" || txt_prstaddr.Text == "" ||
            txt_pertaddr.Text == "" || txt_occptn.Text == "" || txt_nameEmpl.Text == "" ||
            txt_adult.Text == "" || txt_minor.Text == "")
        {
            lblmsg.Text = "Missing Fields! Please fill all the mandatory Fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "insert into rationcard values(" + xx + ",'" + txt_nameappln.Text +
                "','" + txt_fathersname.Text + "','" + txt_prstaddr.Text + "','" + txt_pertaddr.Text +
                "','" + txt_occptn.Text + "','" + txt_nameEmpl.Text + "','" + txt_adult.Text +
                "','" + txt_minor.Text + "','" + txt_elecno.Text + "','" + txt_trano.Text + "','" + txt_lpgno.Text + "')";
            
            x = cmd.ExecuteNonQuery();
            cmd.CommandText = "insert into rationRelation values(" + xx + ",'" + txtfull1.Text + "','" + txtage1.Text + "','" + dp1.SelectedItem.Value + "','" + txtrel1.Text + "','" + txtfull2.Text + "','" + txtage2.Text + "','" + dp2.SelectedItem.Value + "','" + txtrel2.Text + "','" + txtfull3.Text + "','" + txtage3.Text + "','" + dp3.SelectedItem.Value + "','" + txtrel3.Text + "','" + txtfull4.Text + "','" + txtage4.Text + "','" + dp4.SelectedItem.Value + "','" + txtrel4.Text + "','" + txtfull5.Text + "','" + txtage5.Text + "','" + dp5.SelectedItem.Value + "','" + txtrel5.Text + "')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "Registered Successfully";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Registeration Failed";
                lblmsg.Visible = true;
            }
        }
    }
    protected void btnre_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        txt_nameappln.Text = "";
        txt_fathersname.Text = "";
        txt_prstaddr.Text = "";
        txt_pertaddr.Text = "";
        txt_occptn.Text = "";
        txt_nameEmpl.Text = "";
        txt_adult.Text = "";
        txt_minor.Text = "";
        txt_elecno.Text = "";
        txt_trano.Text = "";
        txt_lpgno.Text = "";
        txtfull1.Text = "";
        txtfull2.Text = "";
        txtfull3.Text = "";
        txtfull4.Text = "";
        txtfull5.Text = "";
        txtage1.Text = "";
        txtage2.Text = "";
        txtage3.Text = "";
        txtage4.Text = "";
        txtage5.Text = "";
        txtrel1.Text = "";
        txtrel2.Text = "";
        txtrel3.Text="";
        txtrel4.Text="";
        txtrel5.Text="";




    }
}
