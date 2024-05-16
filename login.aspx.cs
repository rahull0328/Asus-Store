using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string unm = TextBox1.Text;
        string pass = TextBox2.Text;
        string user_sql = "select * from users where username='" + unm + "' AND password='" + pass + "' ";
        string admin_sql = "select * from admin_users where username='" + unm + "' AND password='" + pass + "' ";
        cmd = new SqlCommand(admin_sql, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["uid"] = Convert.ToInt32(dr["id"]);
                Session["adminUser"] = dr["username"].ToString();
            }
            Response.Redirect("admin/dashboard.aspx");
        }
        dr.Close();
        cmd = new SqlCommand(user_sql, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["uid"] = Convert.ToInt32(dr["id"]);
                Session["userName"] = dr["username"].ToString();
            }
            Response.Redirect("default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Credentials')</script>");
        }
        dr.Close();
        con.Close();
    }
}