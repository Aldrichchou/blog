using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagenewPage : System.Web.UI.Page
{
    string author;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["name"] != "")
        {
            author = Request.QueryString["name"].ToString();
            TextException.Text = "欢迎你" + author;
        }
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DBClass dbObj = new DBClass();
        string newsContent = Textnewacontent.Text;
        string newsName = TextNewsname.Text;
        try
        {
            //此处用来实现将数据绑定到前台
            int BlogID;
            string Sqlsort =
                "SELECT BlogID FROM [tb_Blog] WHERE UserName = '" + author+"'";
            BlogID = int.Parse(dbObj.ExecScalar(Sqlsort).ToString());
                Sqlsort =
                "SELECT max(ArticleID) FROM [tb_Article]";
                int lastReviewID =
                    int.Parse(dbObj.ExecScalar(Sqlsort));
                lastReviewID++;
                //System.DateTime currentTime = new System.DateTime();
                string strYM = DateTime.Now.ToString();
                string SqlInsert =
             "INSERT INTO [tb_Article] VALUES('" + lastReviewID + "','" + author + "','" +  newsName + "','" +newsContent + "','"+BlogID+"', '" + strYM + "','"+TextClassesName.Text+"')";
            dbObj.ExecNonQuery(SqlInsert);
            TextException.Text = "成功添加！";
        }
        catch (Exception ex)
        {
            TextException.Text = ex.Message;
        }

}
}