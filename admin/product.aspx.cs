using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
       con.Open();
       BindDDL();
       BindGrid();
       con.Close();
    }
    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM product INNER JOIN category ON product.cat_id = category.id", con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value.ToString());
        Response.Redirect("edit-product.aspx?id=" + id);
    }
    protected void BindDDL()
    {
        cmd = new SqlCommand("select * from category", con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        ddl1.DataSource = dt;
        ddl1.DataTextField = "cat_name";
        ddl1.DataValueField = "id";
        ddl1.DataBind();
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        ddl1.SelectedIndex = 0;
        FileUpload1.Dispose();
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        ddl1.AutoPostBack = true;
        FileUpload1.SaveAs(Server.MapPath("~/admin/upload/"+FileUpload1.FileName));
        string fnm = FileUpload1.PostedFile.FileName;
        con.Open();
        cmd = new SqlCommand("insert into product(cat_id,image,name,mrp,slp,description) values("+ddl1.SelectedValue+",'"+fnm+"','"+TextBox1.Text+"',"+TextBox2.Text+","+TextBox3.Text+",'"+TextBox4.Text+"')", con);
        int result=cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Label13.ForeColor = System.Drawing.Color.Green;
            Label13.Text = "Product Added Successfully";
        }
        else
        {
            Label13.ForeColor = System.Drawing.Color.Red;
            Label13.Text = "Error Adding Product";
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        cmd = new SqlCommand("delete from product where id=" + id,con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Product Removed')</script>");
    }
}