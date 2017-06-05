using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BlogManage : System.Web.UI.Page
{
    string author;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["name"] != "")
        {
            author = Request.QueryString["name"].ToString();
            if (!IsPostBack)
            {
                Response.Write("<script>alert('欢迎你!" + author + "');</script>");
            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DBClass dbObj = new DBClass();
        string newsContent = Textnewacontent.Text;
        string newsName = TextNewsname.Text;
        int BlogID;
        string Sqlsort =
            "SELECT BlogID FROM [tb_Blog] WHERE UserName = '" + author + "'";
        BlogID = int.Parse(dbObj.ExecScalar(Sqlsort).ToString());
        Sqlsort =
        "SELECT max(ArticleID) FROM [tb_Article]";
        int lastReviewID =
            int.Parse(dbObj.ExecScalar(Sqlsort));
        lastReviewID++;
        //System.DateTime currentTime = new System.DateTime();
        string strYM = DateTime.Now.ToString();
        /*
         * 上传图片
         */
        if (!FileUploadimg.HasFile)
        {
            Response.Write("<script>alert('请你上传文件!');</script>");
        }
        else
        {

            string kzm = System.IO.Path.GetFileName(FileUploadimg.PostedFile.FileName);//取文件扩展名
                                                                                       // string time = System.DateTime.Now.ToString("yyyyMMddHHmmssffff");//("yyyy-MM-dd HH:mm:ss:fff");
                                                                                       //DateTime time1 = DateTime.Now;//这个time是用来传到数据库里的，因为数据库字段类型为datetime型
            string path = "ArticleImg/" + kzm;//服务器文件的相对路径
            string fullpath = MapPath(".") + "/" + path;//服务器文件的绝对路径
            FileUploadimg.PostedFile.SaveAs(fullpath);//上传文件到绝对路径fullpath，同名文件覆盖，所以文件名很精确
                                                      /*
                                                       *执行sql语句 
                                                       */
            string SqlInsert =
             "INSERT INTO [tb_Article] VALUES('" + lastReviewID + "','" + author + "','" + newsName + "','" + newsContent + "','" + BlogID + "', '" + strYM + "','" + TextClassesName.Text + "','" + kzm + "')";
            try
            {
                dbObj.ExecNonQuery(SqlInsert);
                Response.Write("<script>alert('上传成功!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('上传出错!');</script>");
            }
        }
    }
}