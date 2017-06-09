using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagereviewPage : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Deletereview(object sender, EventArgs e)
    {
       if (TextRevertID.Text != "")
        {
            int RevertID = int.Parse(TextRevertID.Text);
            string SqlDeleteRevert =
                "DELETE  FROM [tb_Revert] WHERE RevertID='" + RevertID + "'";
            dbObj.ExecNonQuery(SqlDeleteRevert);
            GridView1.DataBind();
            Response.Write("<script>alert('成功删除评论!');</script>");
            TextRevertID.Text = "";
        }
        else
        {
            Response.Write("<script>alert('评论ID不能为空!');</script>");
            return;
        }
    }
}