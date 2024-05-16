using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        cmd=new SqlCommand("insert into contact(name,email,message) values('"+txt1.Text+"','"+txt2.Text+"','"+txt3.Text+"')",con);
        con.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("<script>alert('Message Sent Successfully')</sciprt>");
            Response.Write("<script>window.location.href='default.aspx'</scirpt>");
        }
        else
        {
            Response.Write("<script>alert('Error')<script>");
        }
        con.Close();
    }
}