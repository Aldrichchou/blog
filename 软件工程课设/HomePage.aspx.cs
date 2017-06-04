using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using myGlobalSpace;

public partial class HomePage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    string username = "";
    /*
     * 执行先后顺序为init-》load;
     */ 
    protected void Page_Init()
    {
        Application["Name"] = "";
        Response.Write("<script>alert('欢迎你!');</script>");
    }
    //页面事件触发
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Application["Name"].ToString() != "")
        {
            username = Application["Name"].ToString();
            Response.Write("<script>alert('欢迎你!" + username + "');</script>");
        }
  
    }
    protected void searchNews(object sender, ImageClickEventArgs e)
    {
            try
            {
                string Newskey = Textkey.Text;
                string S_url,news_id;
                while(Newskey == "")
                {
                    Textkey.Text = "未输入新闻标题。"; 
                }
                string Sqlsort =
                 "SELECT ArticleID  FROM [tb_Article] Where Subject = '" + Newskey + "'";
                news_id = dbObj.ExecScalar(Sqlsort).ToString();
                S_url = "Detailnews.aspx?name=" + news_id;
                Response.Redirect(S_url);
             }
            catch (Exception ex)
            {
                Textkey.Text = ex.Message;
            }
    }

    protected void ButtonClick_manage(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ManageLogin.aspx", false);
    }

    protected void sic(object sender, EventArgs e)
    {
        string news_id;
        news_id = "Detailnews.aspx?name="
            + GridView1.SelectedRow.Cells[1].Text;
        //获取当前行值某列的值
        Response.Redirect(news_id);
    }

     protected void UserLogin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserLogin.aspx", false);
    }

}