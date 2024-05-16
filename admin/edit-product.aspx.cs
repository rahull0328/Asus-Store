using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class admin_edit_product : System.Web.UI.Page
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
            BindDDL();
            fetchData();
            con.Close();
        }

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
    protected void fetchData()
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        cmd=new SqlCommand("select * from product where id="+id,con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        TextBox1.Text = dt.Rows[0]["name"].ToString();
        TextBox2.Text = dt.Rows[0]["mrp"].ToString();
        TextBox3.Text = dt.Rows[0]["slp"].ToString();
        TextBox4.Text = dt.Rows[0]["description"].ToString();
        string imgsrc = dt.Rows[0]["image"].ToString();
        if (imgsrc != "")
        {
            Image1.Visible = true;
            btn1.Visible = true;
            FileUpload1.Visible = false;
            Image1.ImageUrl = "~/admin/upload/" + imgsrc;
        }
        else
        {
            FileUpload1.Visible = true;
            Image1.Visible = false;
            btn1.Visible = false;
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        con.Open();
        cmd = new SqlCommand("update product set image='" + null + "' where id="+id, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        con.Open();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/admin/upload/" + FileUpload1.FileName));
            string imgsrc = FileUpload1.PostedFile.FileName;
            cmd = new SqlCommand("update product set cat_id=" + ddl1.SelectedValue + ",name='" + TextBox1.Text + "',mrp=" + TextBox2.Text + ",slp=" + TextBox3.Text + ",image='"+imgsrc+"',description='" + TextBox4.Text + "' where id="+id, con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Redirect("product.aspx");
            }
            else
            {
                Response.Redirect("<script>alert('Error Uploading Image')</script>");
            }
        }
        else
        {
            cmd = new SqlCommand("update product set cat_id=" + ddl1.SelectedValue + ",name='" + TextBox1.Text + "',mrp=" + TextBox2.Text + ",slp=" + TextBox3.Text + ",description='" + TextBox4.Text + "' where id=" + id, con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Redirect("product.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error Uploading Image')</script>");
            }
        }
        con.Close();
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("product.aspx");
    }
}