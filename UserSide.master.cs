    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Configuration;
    using System.Data;
    using System.Configuration;
    using System.Data.SqlClient;

    public partial class UserSide : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDDL();
                ddl1.Items.Insert(0, new ListItem("Category", ""));
            }
            if (Session["userName"] != null)
            {
                dhl4.Visible = false;
                dhl5.Visible = true;
                dhl6.Visible = true;
                btn1.Visible = true;
                btn1.Text = "Hi " + Session["userName"].ToString();
            }
            else
            {
                dhl4.Visible = true;
                dhl5.Visible = false;
                dhl6.Visible = false;
                btn1.Visible = false;
            }
        }
        protected void BindDDL()
        {
            con.Open();
            cmd = new SqlCommand("select * from category", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddl1.DataSource = dt;
            ddl1.DataTextField = "cat_name";
            ddl1.DataValueField = "id";
            ddl1.DataBind();
            con.Close();
        }
        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx?id=" + ddl1.SelectedItem.Value);
        }
    }
