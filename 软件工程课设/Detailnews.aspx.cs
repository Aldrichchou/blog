using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detailnews : System.Web.UI.Page
{
    DBClass dbObj = new DBClass();
    int Newskey,blogID;
    string subject;
    protected void page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
           try
            {
                Newskey = int.Parse(Request.QueryString["name"].ToString());
                //此处用来实现将数据绑定到前台
                string Sqlsort =
               "SELECT Content FROM [tb_Article] Where ArticleID = '" + Newskey + "'";
                string content = dbObj.ExecuteReader(Sqlsort);
                Label1.Text = content;
                Sqlsort =
                "SELECT Subject FROM [tb_Article] Where ArticleID = '" + Newskey + "'";
                 subject = dbObj.ExecScalar(Sqlsort);
                Sqlsort =
                "SELECT BlogID FROM [tb_Article] Where ArticleID = '" + Newskey + "'";
                blogID = int.Parse(dbObj.ExecScalar(Sqlsort)); 

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //    if (!IsPostBack)
        //   {
            string user_name = TextUser.Text;
            string user_pw = TextPw.Text;
            string reviewContent = TextReview.Text;
            int visitID;
            string hostip;
        //    string hostName = Dns.GetHostName();   //获取本机名
         //   IPHostEntry localhost = Dns.GetHostByName(hostName);    //方法已过期，可以获取IPv4的地址S                                                             //IPHostEntry localhost = Dns.GetHostEntry(hostName);   //获取IPv6地址
          //  IPAddress localaddr = localhost.AddressList[0];
         //   hostip = localaddr.ToString();
            try
                {
                //此处用来实现将数据绑定到前台
                    string Sqlsort =
                   "SELECT PassWord FROM [tb_Blog] Where UserName = '" + user_name + "' ";
                    string pw = dbObj.ExecScalar(Sqlsort);
                    if (pw == user_pw)
                    {
                    Sqlsort =
                    " SELECT PassWord FROM[tb_Blog] Where UserName = '" + user_name + "' ";
                    visitID = int.Parse(dbObj.ExecScalar(Sqlsort));
                    Sqlsort =
                    "SELECT max(RevertID) FROM [tb_Revert]";
                    int lastReviewID = 
                        int.Parse(dbObj.ExecScalar(Sqlsort));
                    lastReviewID++;
                    System.DateTime currentTime = new System.DateTime();
                    string SqlInsert =
                    "INSERT INTO [tb_Blog] VALUES('" + lastReviewID+"','"+subject+"','"+ reviewContent + "','"+Newskey+"','"+blogID+ "','" + currentTime + "','"+"dasda"+"','"+visitID+"','" + user_name +"')";
                    dbObj.ExecNonQuery(SqlInsert);
                    TextException.Text = "成功添加评论！";   
               
                }
                else
                {
                  TextException.Text = "失败了！";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
 //       }
    }
}