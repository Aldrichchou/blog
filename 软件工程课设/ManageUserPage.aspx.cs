using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageUserPage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int user_id;
        user_id =int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        string Sqldelete
            = "DELETE * FROM [tb_Blog] WHERE ID ='" + user_id + "'";
        //获取当前行值某列的值
         dbObj.ExecNonQuery(Sqldelete);
        SqlDataSource2.DeleteCommand = Sqldelete;
        Response.Write("<script>alert('删除成功!');</script>");
    }

 protected void insertUser(object sender, EventArgs e)
    {
        string Sqlsort =
               "SELECT max(BlogID) FROM [tb_Blog]";
        int lastID = int.Parse(dbObj.ExecScalar(Sqlsort));
        lastID++;
        string userName = TextUserName.Text;
        string userPw =TextPW .Text;
        string userqq = TextQQ.Text;
        string useremail = TextReallyName.Text;
        string userSex = TextSex.Text;
        string userRealName = TextReallyName.Text;
        string userBirthday = TextBirthday.Text;
        string userAddr = TextAddress.Text;
        string userPostCode = TextPostCode.Text;
        string userHomeP = TextHomePhone.Text;
        string userMobileP = TextMobilePhone.Text;
        string userICQ = TextICQ.Text;
        string userRegtime = TextRegTime.Text;
        string userip = TextIP.Text;
        DateTime dtDate;
        if (DateTime.TryParse(userRegtime, out dtDate))
        {
            if (userName != "" && userPw != "")
            {
                string SqlInsert
                 = "INSERT INTO  [tb_Blog] (UserName,PassWord,Sex,ReallyName,Birthday,Address,PostCode,Email,HomePhone,MobilePhone,QQ,ICQ,RegTime,IP) VALUES('" + userName + "','" + userPw + "','" + userSex + "','" + userRealName + "','" + userBirthday + "','" + userAddr + "','" + userPostCode + "','" + useremail + "','" + userHomeP + "','" + userMobileP + "','" + userqq + "','" + userICQ + "','" + userRegtime + "','" + userip + "') ";
                dbObj.ExecNonQuery(SqlInsert);
                Response.Write("<script>alert('已经成功添加新博客!');</script>");
            }
            else
            {
                Response.Write("<script>alert('需要填写正确的密码和用户名!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('需要填写正确形式的注册时间!');</script>");
        }
   /*
        string userName = TextUser.Text;
        string userPw = TextPw.Text;
        string userqq = Textqq.Text;
        string useremail = Textemail.Text;
        if (userName != ""&&userPw!="")
        {
            string SqlInsert
            = "INSERT INTO [User] VALUES('" + lastID + "','" + userName + "','" + userPw + "','" + userqq + "','" + useremail + "') ";
            dbObj.ExecNonQuery(SqlInsert);
            TextException.Text = "添加成功用户！";
        }
        else
        {
            TextException.Text = "用户名或者密码不能为空！";
        }
*/
    }

    protected void Deleteuser(object sender, EventArgs e)
    {
        string userName = TextUserName.Text;
        string SqlDeleteUser =
               "DELETE  FROM [tb_Blog] WHERE UserName='" + userName+"'";
        dbObj.ExecNonQuery(SqlDeleteUser);
        Response.Write("<script>alert('成功删除用户!');</script>");

    }
}