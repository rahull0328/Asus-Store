using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class products : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            bindTitle();
            BindRep();
            con.Close();
        }
        
    }
    protected void BindRep()
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        cmd = new SqlCommand("select * from product where cat_id=" + id, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        rep1.DataSource = dt;
        rep1.DataBind();
    }
    protected void bindTitle()
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        cmd = new SqlCommand("select * from category where id=" + id, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        Label1.Text = dt.Rows[0][1].ToString();
    }
}