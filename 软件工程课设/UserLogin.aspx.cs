using myGlobalSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResignOrLogin : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();

    protected void User_Login(object sender, EventArgs e)
    {

        //string S_url;
        string UserName = TextUserName.Text;
        string UserPw = Textuserpw.Text;
        try
        {
            if (UserName != "" && UserPw != "")
            { 
            //此处用来实现将数据绑定到前台
                string Sqlsort =
               "SELECT PassWord FROM [tb_Blog] Where UserName = '" + UserName + "'";
                string key = dbObj.ExecScalar(Sqlsort);
                if (UserPw == key)
                {
                    //Global.j = Global.j + 1;
                    string NameValue = UserName;
                    Application["Name"] = NameValue;
                    Response.Redirect("HomePage.aspx");
                    //S_url = "ManagePage.aspx?name=" + USERNAME;
                    //Response.Redirect(S_url);
                    //Server.Transfer("HomePage.aspx");//回导致线程中断
                    //Server.Execute("HomePage.aspx");//会导致返回的界面发生改变
                }
                else
                {
                    Response.Write("<script>alert('需要填写正确的密码和用户名!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请填写密码和用户名!');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message.ToString()+"');</script>");
        }
    }
}