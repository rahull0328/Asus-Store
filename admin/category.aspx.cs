using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class category : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from category", con);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        con.Open();
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
        con.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        cmd = new SqlCommand("delete from category where id=" + id, con);
        int result=cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Label3.Text = "Record Deleted Successfully";
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Error Deleting Record";
        }
        BindGrid();
        con.Close();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        con.Open();
        GridView1.EditIndex = -1;
        BindGrid();
        con.Close();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string cat_name=((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        cmd = new SqlCommand("update category set cat_name='" + cat_name + "' where id=" + id, con);
        int result=cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Label3.ForeColor = System.Drawing.Color.Green;
            Label3.Text = "Record Updated Successfully";
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Error Updating Record";
        }
        GridView1.EditIndex = -1;
        BindGrid();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        GridViewRow row = GridView1.FooterRow;
        string cat_name = ((TextBox)row.FindControl("TextBox2")).Text;
        cmd = new SqlCommand("insert into category(cat_name) values('" + cat_name + "')", con);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Label3.ForeColor = System.Drawing.Color.Green;
            Label3.Text = "Record Inserted Successfully";
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Error Inserting Record";
        }
        BindGrid();
        con.Close();
    }
}