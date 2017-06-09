using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            #region 初始化用户Session变量
            //在线用户生成的session标识
            Session["UserHashKey"] = null;
            //当前用户可访问的页面
            Session["PagePower"] = null;
            //当前用户页面中可使用的按钮控件
            Session["ControlPower"] = null;

            #endregion
        }
    }

     /// <summary>登录</summary>
     /// <param name="sender"></param>
     /// <param name="e"></param>
    protected void Manager_Login(object sender, EventArgs e)
    {
        DBClass dbObj = new DBClass();
        string S_url;

        #region 获取用户输入的参数，并进行数据初步处理
        //获取用户名，并进行危险字符过滤
        string managerName = TextManageName.Text;
        //获取用户密码
        string managerPw = TextPw.Text;
        #endregion
        try
        {
            //用户名验证
            if (string.IsNullOrEmpty(managerName.Trim()))
            {
                Response.Write("<script>alert('需要填写用户名!');</script>");
                return;
            }
            //密码验证
            if (string.IsNullOrEmpty(managerPw.Trim()))
            {
                Response.Write("<script>alert('需要填写密码!');</script>");
                return;
            }
            //此处用来实现将数据绑定到前台
            string Sqlsort =
           "SELECT Password FROM [tb_Admin] Where UserName = '" + managerName + "'";
            string key = dbObj.ExecScalar(Sqlsort);
            if(managerPw == key)
            {
                Session["UserHashKey"] = managerName;
                Response.Redirect("HomePage.aspx");
             }
            else
            {
                Response.Write("<script>alert('需要填写正确的密码和用户名!');</script>");

            }
        }
        catch (Exception ex)
       {
            Response.Write("<script>alert('执行失败！!');</script>");
        }
    }
}
