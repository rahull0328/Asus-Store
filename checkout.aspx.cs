using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class checkout : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] != null)
        {
            if (!IsPostBack)
            {
                con.Open();
                BindData();
                con.Close();
            }
        }
        else
        {
            Response.Write("<script>alert('Please Login First')</script>");
            Response.Write("<script>window.location.href='login.aspx'</script>");
        }

    }
    protected void BindData()
    {
        fetchUserDetails();
        BindRep();
        GrandTotal();
    }
    protected void BindRep()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select * from cart where uid=" + uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        rep1.DataSource = dt;
        rep1.DataBind();
    }
    protected void fetchUserDetails()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select * from users where id=" + uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        txt1.Text = dt.Rows[0][1].ToString();
        txt2.Text = dt.Rows[0][2].ToString();
        txt3.Text = dt.Rows[0][3].ToString();
    }
    protected void GrandTotal()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select SUM(total_price) from cart where uid=" + uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        grandTotalLabel.Font.Bold = true;
        grandTotalLabel.Font.Size = new FontUnit("20px");
        grandTotalLabel.ForeColor = System.Drawing.Color.Red;
        grandTotalLabel.Text = "₹" + dt.Rows[0][0].ToString();
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["uid"]);
        string name = txt1.Text;
        string email = txt2.Text;
        double phno = Convert.ToDouble(txt3.Text);
        string address = txt4.Text;
        string city = txt5.Text;
        string country = ddl1.SelectedItem.ToString();
        string state = ddl2.SelectedItem.ToString();
        double zip = Convert.ToDouble(txt6.Text);
        char rupee = '₹';
        string grandTotal=grandTotalLabel.Text;
        string cleanPrice = grandTotal.TrimStart(rupee);
        double total_price=Convert.ToDouble(cleanPrice);
        string pay_mode = "Cash On Delivery";
        string date = DateTime.Now.ToString("dd-MM-yyyy");
        con.Open();
        cmd = new SqlCommand("insert into orders(uid,name,email,phno,address,city,country,state,zip,total_price,date,pay_mode) values(" + uid + ",'" + name + "','" + email + "'," + phno + ",'" + address + "','" + city + "','" + country + "','" + state + "'," + zip + "," + total_price + ",'" + date + "','" + pay_mode + "')", con);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            cmd = new SqlCommand("select SCOPE_IDENTITY()", con);
            int lastInsertedId = Convert.ToInt32(cmd.ExecuteScalar());
            cmd = new SqlCommand("insert into order_details(order_id,uid,pid,image,name,price,qty) SELECT " + lastInsertedId + ","+uid+",pid,image,name,price,qty FROM cart where uid="+uid,con);
            int result2 = cmd.ExecuteNonQuery();
            if (result2 > 0)
            {
                cmd = new SqlCommand("delete from cart where uid=" + uid, con);
                int result3 = cmd.ExecuteNonQuery();
                if (result3 > 0)
                {
                    Response.Write("<script>alert('Order Placed Successfully')</script>");
                    Response.Write("<script>window.location.href='default.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error In Third Query Execution')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Error In Second Query Execution')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Error In First Query Execution')</script>");
        }
        con.Close();
    }
}