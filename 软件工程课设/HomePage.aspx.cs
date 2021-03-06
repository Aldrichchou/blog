﻿using System;
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
        //ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('第一种方式,无白屏！"+Application["Name"]+"');</script>");
        //HttpContext.Current.Response.Write("<script>alert('第二种方式,有白屏！')</script>");
    }
    //页面事件触发
    protected void Page_Load(object sender, EventArgs e)
    {
            if(Session["Name"] != null)
            {
                //Global.j = Global.j - 1;
                username = Session["Name"].ToString();
                TextMessage.Text = "欢迎" + username;
                //Response.Write("<script>alert('欢迎你!" + username + "');</script>");
            }
           else
                TextMessage.Text = "你好！";
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
               Session["NEWSID"] = int.Parse(news_id);
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
        string username = "";
        string userpw = "";
        if (Session["Name"] != null && Session["PW"] != null)
        {
            username = Session["Name"].ToString();
            userpw = Session["PW"].ToString();
        }
        string SqlSort =
            "Select Password from tb_admin where UserName ='"+username+"'";
        string key = dbObj.ExecScalar(SqlSort);
        if(key != userpw)
        {
            Response.Redirect("ManageLogin.aspx", false);
        }
        else
        {
            Response.Redirect("ManagePage.aspx", false);
        }
    }

    protected void sic(object sender, EventArgs e)
    {
        Session["NEWSID"] =  
           int.Parse(GridView1.SelectedRow.Cells[1].Text);
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

    protected void Blog_Manage(object sender, ImageClickEventArgs e)
    {
        if (username == "")
        {
            Response.Redirect("UserLogin.aspx", false);
        }
        else
        {
            //获取当前行值某列的值
            Response.Redirect("BlogManage.aspx",false);
        }
    }

    protected void Blog_Exit(object sender, ImageClickEventArgs e)
    {
        #region 初始化用户Session变量
        Session["Name"] = null;
        Session["PW"] = null;
        Session["NEWSID"] = null;
        #endregion

        Response.Write("<script>alert('你已成功退出账户!');</script>");
        return;
    }
}