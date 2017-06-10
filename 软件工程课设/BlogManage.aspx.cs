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
        if (Session["Name"] != null)
        {
            author = Session["Name"].ToString();
        }
        if (!IsPostBack)
        {
            Response.Write("<script>alert('欢迎你!" + author + "');</script>");
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
                GridView1.DataBind();
                Response.Write("<script>alert('上传成功!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('上传出错!');</script>");
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    //protected void DatashowBlog(object sender, EventArgs e)
    //{
    //    if (author != "")
    //    {
    //        string SqlSort =
    //     "Select Subject,Content,BlogID,Time,Class from [tb_Article] where Author = '" + author + "'";
    //    }
    //}
    //列表加载处理
    protected void gv_showReport_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       /*
         *鼠标放到上面显示会显示完整信息 
         */
        //判定当前类型是否为数据行，如果是，则添加title
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //获取列数，进行循环添加title
            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                //定义一个string类型变量用来存放每个单元格的内容
                string temp = e.Row.Cells[i].Text;
                //设置title为GridView的HeadText
                e.Row.Cells[i].Attributes.Add("title", temp);//未截取长度    
                                                             //判定temp的长度,
                if (temp.Length > 20)
                {
                    //截取字符串
                    temp = temp.Substring(0, 19) + "...";
                }
            }
        }
        /*
         *在界面上最多只显示50个字符
         */
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[1].Text.Length >= 50)//超过50个字符时就截取
            {
                e.Row.Cells[1].Text = e.Row.Cells[1].Text.Substring(0, 50) + ".....";
            }
        }
    }

    protected void Gridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DBClass dbObj = new DBClass();
        string subject = 
            GridView1.DataKeys[e.RowIndex].Value.ToString();
        string SqlDelete =
            "DELETE FROM[tb_Article] WHERE Subject = '" + subject + "'";
        SqlDataSource3.DeleteCommand = SqlDelete; 
        dbObj.ExecNonQuery(SqlDelete);
        //执行删除 
        GridView1.DataBind();
    }

    protected void Gridview_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DBClass dbObj = new DBClass();
        string subject =
            GridView1.DataKeys[e.RowIndex].Value.ToString();
        string SqlDelete =
            "DELETE FROM[tb_Article] WHERE Subject = '" + subject + "'";
        SqlDataSource3.DeleteCommand = SqlDelete;
        dbObj.ExecNonQuery(SqlDelete);
        //执行删除 
        GridView1.DataBind();
    }
}
