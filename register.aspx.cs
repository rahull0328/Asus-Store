using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "insert into users(name,email,phno,username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "')";
        cmd = new SqlCommand(query, con);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Account Created Successfully! You Can Login Now')</script>");
            Response.Write("<script>window.location.href='login.aspx'</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        con.Close();
    }
}