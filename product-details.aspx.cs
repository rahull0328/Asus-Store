using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class product_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlDataReader dr;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        BindRep();
        con.Close();
    }
    protected void BindRep()
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        cmd = new SqlCommand("select * from product where id=" + id, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        rep1.DataSource = dt;
        rep1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["userName"] != null)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int pid = Convert.ToInt32(Request.QueryString["id"]);
            cmd = new SqlCommand("select pid from cart where uid=" + uid, con);
            con.Open();
            dr = cmd.ExecuteReader();
            List<int> list=new List<int>();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    list.Add(dr.GetInt32(0));
                }
            }
            dr.Close();
            con.Close();
            int[] pids = list.ToArray<int>();
            bool inCart = false;
            foreach (int i in pids)
            {
                if (i.Equals(pid))
                {
                    inCart = true;
                }
            }
            if (inCart)
            {
                Response.Write("<script>alert('Product Is Already Added In Cart')</script>");
            }
            else
            {
                cmd = new SqlCommand("select * from product where id=" + pid, con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                string image = dt.Rows[0][2].ToString();
                string name = dt.Rows[0][3].ToString();
                string str_qty = ddl1.SelectedItem.ToString();
                double qty = Convert.ToDouble(str_qty);
                double slp = Convert.ToDouble(dt.Rows[0][5]);
                double total_price = qty * slp;
                cmd = new SqlCommand("insert into cart(uid,pid,image,name,qty,price,total_price) values(" + uid + "," + pid + ",'" + image + "','" + name + "'," + qty + "," + slp + "," + total_price + ")", con);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Product Added To Cart')</script>");
                    Response.Write("<script>window.location.href='cart.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error adding product in cart')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Please Login First In Order To Move Forward')</script>");
            Response.Write("<script>window.location.href='login.aspx'</script>");
        }
    }
}