using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminPanel : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminUser"] != null)
        {
            btn1.Text = "Hi " + Session["adminUser"].ToString();
        }
        else
        {
            Response.Write("<script>alert('Unauthorized Entry Prohibited')</script>");
            Response.Write("<script>window.location.href='../login.aspx'</script>");
        }
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/logout.aspx");
    }
}
