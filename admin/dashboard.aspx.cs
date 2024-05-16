using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class admin_dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd,cmd2,cmd3;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            bindLabel();
            BindGrid();
            con.Close();
        }
    }
    protected void bindLabel()
    {
        cmd = new SqlCommand("select count(*) from category",con);
        cmd2 = new SqlCommand("select count(*) from product",con);
        cmd3 = new SqlCommand("select count(*) from orders",con);
        Label2.Text = (Convert.ToInt32(cmd.ExecuteScalar())).ToString();
        Label3.Text = (Convert.ToInt32(cmd2.ExecuteScalar())).ToString();
        Label4.Text = (Convert.ToInt32(cmd3.ExecuteScalar())).ToString();
    }
    protected void BindGrid()
    {
        cmd = new SqlCommand("select * from users",con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        gv1.DataSource = dt;
        gv1.DataBind();
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
        int id = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
        cmd = new SqlCommand("delete from users where id=" + id, con);
        con.Open();
        cmd.ExecuteNonQuery();
        BindGrid();
        con.Close();
    }
    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
        string name = ((TextBox)gv1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        string email = ((TextBox)gv1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        double phno = Convert.ToDouble(((TextBox)gv1.Rows[e.RowIndex].FindControl("TextBox3")).Text);
        cmd = new SqlCommand("update users set name='" + name + "',email='" + email + "',phno=" + phno+" where id="+id, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gv1.EditIndex = -1;
        BindGrid();
    }
}