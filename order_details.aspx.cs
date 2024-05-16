using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class order_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        BindRep();
        getGrandTotal();
        con.Close();
    }
    protected void BindRep()
    {
        int oid=Convert.ToInt32(Request.QueryString["oid"]);
        int uid=Convert.ToInt32(Session["uid"]);
        Label10.Text = oid.ToString();
        cmd = new SqlCommand("select * from order_details where order_id=" + oid + " and uid=" + uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        rep1.DataSource = dt;
        rep1.DataBind();
    }
    protected void getGrandTotal()
    {
        int oid=Convert.ToInt32(Request.QueryString["oid"]);
        int uid=Convert.ToInt32(Session["uid"]);
        cmd=new SqlCommand("select total_price,uid from orders where id="+oid+" and uid="+uid,con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        Label9.Text = "₹" + dt.Rows[0][0].ToString();
        Label9.DataBind();
    }
}