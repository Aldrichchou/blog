using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageLogin : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    protected void Manager_Login(object sender, EventArgs e)
    {
        string S_url;
        string managerName = TextManageName.Text;
        string managerPw = TextPw.Text;
        try
        {
            //此处用来实现将数据绑定到前台
            string Sqlsort =
           "SELECT Password FROM [tb_Admin] Where UserName = '" + managerName + "'";
            string key = dbObj.ExecScalar(Sqlsort);
            if(managerPw == key)
            {
                S_url = "ManagePage.aspx?name=" + managerName;
                Response.Redirect(S_url);
             }
            else
            {
                Tip.Text = "密码或名称错误，请重输！";
            }
        }
        catch (Exception ex)
       {
           Tip.Text = ex.Message;
       }
    }
}
