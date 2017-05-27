using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagePage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    string S_url;
    string managerName;
    protected void Page_Load(object sender, EventArgs e)
    {
        managerName = Request.QueryString["name"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Homepage.aspx");
    }

   protected void newsEdit(object sender, ImageClickEventArgs e)
    {
        S_url = "ManagenewPage.aspx?name=" + managerName;
        Response.Redirect(S_url);
    }

    protected void reviewEdit(object sender, ImageClickEventArgs e)
    {
        S_url = "ManagereviewPage.aspx?name=" + managerName;
        Response.Redirect(S_url);
    }

    protected void userEdit(object sender, ImageClickEventArgs e)
    {
        S_url = "ManageUserPage.aspx?name=" + managerName;
        Response.Redirect(S_url);
    }
}