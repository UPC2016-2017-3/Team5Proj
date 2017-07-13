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

public partial class 学生界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string myName1Value;
        myName1Value = Request.Cookies["myCookie"].Value;
        Label5.Text = myName1Value;
        //Label5.Text = Request.QueryString["name"];
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        conn.Open();
        String sql="select 目前组号 from 当前组号";
        SqlCommand cmd=new SqlCommand(sql,conn);
        SqlDataReader dr=cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[0].ToString(); // 提取数据库指定行的第一列

        }
        dr.Close();
        conn.Close();
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("学生查看排名.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = "Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=132";
        SqlConnection conn = new SqlConnection(strcon);
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        conn.Open();
        string str1 = TextBox1.Text;
        string str2 = TextBox2.Text;
        try
        {
            string sql = "select 参赛者编号 from 观众评分,当前组号 where 参赛者编号=当前组号.目前组号 and 组号='"+Label5.Text+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n == 0)
            {
                if (Convert.ToDouble(TextBox2.Text) > 0 && Convert.ToDouble(TextBox2.Text) < 101)
                {


                    String cmdstr1 = "Insert into 观众评分 (组号,评分,参赛者编号)values('" + Label5.Text + "','" + str2 + "','" + str1 + "')";
                    SqlCommand x = new SqlCommand(cmdstr1, conn);
                   

                    x.ExecuteNonQuery();
                    Label7.Text = "评分成功";
                    Response.Redirect("学生界面.aspx");
                }
                else
                {
                    Label7.Text = "分数错误";
                }
            }
            else
            {
                Label7.Text = "已为该组评分";
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}