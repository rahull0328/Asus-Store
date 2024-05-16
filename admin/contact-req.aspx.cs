using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class admin_contact_req : System.Web.UI.Page
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
            BindGrid();
            con.Close();
        }
    }
    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM contact", con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        gv1.DataSource = dt;
        gv1.DataBind();
    }
    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
        cmd = new SqlCommand("delete from contact where id=" + id,con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Contact Request Removed')</script>");
    }
}