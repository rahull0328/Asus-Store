using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class my_orders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        BindGrid();
        con.Close();
    }
    protected void BindGrid()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select * from orders where uid=" + uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        gv1.DataSource = dt;
        gv1.DataBind();
    }
    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int oid = Convert.ToInt32(gv1.DataKeys[e.NewEditIndex].Value.ToString());
        Response.Redirect("order_details.aspx?oid=" + oid);
    }
}