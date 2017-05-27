using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;

public partial class HomePage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    /// <summary>   
    /// 起传输点击对应行内容的作用
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void selectedNews(object sender, EventArgs e)
    {
        string news_id;
        news_id  = "Detailnews.aspx?name=" 
            + GridView1.SelectedRow.Cells[1].Text;
        //获取当前行值某列的值
        Response.Redirect(news_id);
    }
    protected void searchNews(object sender, ImageClickEventArgs e)
    {
        //  if (!IsPostBack)
       // {
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
      //  }
    }

    protected void ButtonClick_manage(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ManageLogin.aspx", false);
    }
}