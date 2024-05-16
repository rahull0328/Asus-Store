using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                con.Open();
                BindGrid();
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Write("<script>window.location.href='login.aspx'</script>");
            }
        }
    }
    protected void BindGrid()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select * from cart where uid="+uid, con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        gv1.DataSource = dt;
        gv1.DataBind();
        GrandTotal();
    }
    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        con.Open();
        gv1.EditIndex = e.NewEditIndex;
        BindGrid();
        con.Close();
    }
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        con.Open();
        gv1.EditIndex = -1;
        BindGrid();
        con.Close();
    }
    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int uid=Convert.ToInt32(Session["uid"]);
        int id = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
        cmd = new SqlCommand("delete from cart where id=" + id + " and uid=" + uid, con);
        con.Open();
        int result=cmd.ExecuteNonQuery();
        con.Close();
        if (result > 0)
        {
            Response.Write("<script>alert('Product Removed From Cart')</script>");
        }
        else
        {
            Response.Write("<script>alert('Error Removing Product From Cart')</script>");
        }
    }
    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int uid = Convert.ToInt32(Session["uid"]);
        int id = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
        string str_qty=((TextBox)gv1.Rows[e.RowIndex].FindControl("txt1")).Text;
        string str_price=((Label)gv1.Rows[e.RowIndex].FindControl("Label3")).Text;
        char rupee='₹';
        string cleanPrice = str_price.TrimStart(rupee);
        double qty = Convert.ToDouble(str_qty);
        double price = Convert.ToDouble(cleanPrice);
        double total_price = qty * price;
        cmd = new SqlCommand("update cart set qty=" + qty + ",price=" + price + ",total_price=" + total_price + " where id=" + id + " and uid=" + uid, con);
        con.Open();
        cmd.ExecuteNonQuery();
        gv1.EditIndex = -1;
        BindGrid();
        con.Close();
    }
    protected void GrandTotal()
    {
        int uid = Convert.ToInt32(Session["uid"]);
        cmd = new SqlCommand("select SUM(total_price) from cart where uid=" + uid,con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        if (gv1.FooterRow != null)
        {
            Label grandTotalLabel = (Label)gv1.FooterRow.FindControl("Label6");
            grandTotalLabel.Font.Bold = true;
            grandTotalLabel.Font.Size = new FontUnit("20px");
            grandTotalLabel.ForeColor = System.Drawing.Color.White;
            grandTotalLabel.Text = "₹" + dt.Rows[0][0].ToString();
        }

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}