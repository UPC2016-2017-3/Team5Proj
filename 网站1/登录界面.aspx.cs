using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class 登录界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string username = TextBox1.Text.Trim().ToString();
            string password = TextBox2.Text.Trim().ToString();
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
            conn.Open();

            string sql = "select * from 用户名密码 where 组号='" + username + "' and 密码='" + password + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n > 0)//判断是否有匹配的用户名和密码
            {
               
                HttpCookie objCookie = new HttpCookie("myCookie", TextBox1.Text);
                Response.Cookies.Add(objCookie);
                Response.Redirect("学生界面.aspx");
            }
            else
            {
                Label4.Text = "用户名或密码错误";
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        

    }


       
    protected void TextBox1_TextChanged(object sender, EventArgs e)
{

}

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string username = TextBox1.Text.Trim().ToString();
            string password = TextBox2.Text.Trim().ToString();
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
            conn.Open();

            string sql = "select * from 教师用户 where 教师用户名='" + username + "' and 密码='" + password + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            

            //int n = (int)cmd.ExecuteScalar();
            //dataAdapter.Fill(result);

            if (n > 0)//判断是否有匹配的用户名和密码
            {
                HttpCookie objCookie = new HttpCookie("myCookie2", TextBox1.Text);
                Response.Cookies.Add(objCookie);
                //string s_url;
                //s_url = "教师界面.aspx?name=" + TextBox1.Text;
                //Response.Redirect(s_url);
                Response.Redirect("教师界面.aspx");
            }
            else
            {
                Label4.Text = "用户名或密码错误";
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string username = TextBox1.Text.Trim().ToString();
            string password = TextBox2.Text.Trim().ToString();
            if(username=="admin"&&password=="admin")
            {

                Response.Redirect("管理员界面.aspx");
            }
            else
            {
                Label4.Text = "用户名或密码错误";
            }
        
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}
    