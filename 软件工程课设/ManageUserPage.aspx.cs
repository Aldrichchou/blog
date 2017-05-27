using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageUserPage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int user_id;
        user_id =int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        string Sqldelete
            = "DELETE * FROM [tb_Blog] WHERE ID ='" + user_id + "'";
        //获取当前行值某列的值
         dbObj.ExecNonQuery(Sqldelete);
        SqlDataSource2.DeleteCommand = Sqldelete;
        TextException.Text = "成功删除！";
    }

 protected void insertUser(object sender, EventArgs e)
    {
        string Sqlsort =
               "SELECT max(ID) FROM [tb_Blog]";
        int lastID = int.Parse(dbObj.ExecScalar(Sqlsort));
        lastID++;
        string userName = TextUser.Text;
        string userPw = TextPw.Text;
        string userqq = Textqq.Text;
        string useremail = Textemail.Text;
        string SqlInsert
         = "INSERT INTO [tb_Blog] VALUES('" + lastID + "','" + userName + "','" + userPw + "',"+231+","+2016+","+11+","+111+",'" + useremail + "') ";
        dbObj.ExecNonQuery(SqlInsert);
        TextException.Text = lastID.ToString();
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
        string userName = TextUser.Text;
        string SqlDeleteUser =
               "DELETE  FROM [tb_Blog] WHERE UserName='" + userName+"'";
        dbObj.ExecNonQuery(SqlDeleteUser);
        TextException.Text = "成功删除用户！";

    }
}