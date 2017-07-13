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

public partial class 教师登录 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string myName1Value;
        myName1Value = Request.Cookies["myCookie2"].Value;
        Label7.Text = myName1Value;
       // Label7.Text = Request.QueryString["name"];
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string s_url;
        //s_url = "教师排名.aspx?name=" + Label7.Text;
        //Response.Redirect(s_url);
        Response.Redirect("教师查看排名.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        conn.Open();
        string str1 = TextBox1.Text;
        string str2 = TextBox2.Text;
        string str3 = TextBox3.Text;
        string str4 = Label7.Text;
        try
        {
            string sql = "select 参赛者编号 from 评委评分,当前组号 where 参赛者编号=当前组号.目前组号 and 老师='"+Label7.Text+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n == 0)
            {
                if (Convert.ToDouble(TextBox1.Text) > 0 && Convert.ToDouble(TextBox1.Text) < 101)
                {
                    String cmdstr1 = "Insert into 评委评分 (老师,评分,评价,参赛者编号)values('" + str4 + "','" + str1 + "','" + str2 + "','" + str3 + "')";
                    SqlCommand x = new SqlCommand(cmdstr1, conn);
                    x.ExecuteNonQuery();
                    Label8.Text = "评分成功";
                }
                else
                {
                    Label8.Text = "分数错误";
                }
            }
            else
            {
                Label8.Text = "已为该组评分";
            }
                     conn.Close();
        }
        catch 
        {
            Label8.Text = "已为该组评分";
        }
    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        string str4 = TextBox3.Text;
        SqlConnection conn = new SqlConnection();

        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        conn.Open();
        SqlCommand cmd1= conn.CreateCommand();
        cmd1.CommandText = "update 当前组号 set 目前组号='"+TextBox3.Text+"'";
       
        cmd1.ExecuteNonQuery();
        Label8.Text = "已换组";
        conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string strcon = "Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        SqlConnection conn1 = new SqlConnection(strcon);
        conn1.Open();
        SqlCommand cmd1 =conn1.CreateCommand();
        string sqlstr = "select 参赛者编号  from 参赛者 where 参赛者编号='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(sqlstr, conn1);
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        //int n = Convert.ToInt32(cmd1.ExecuteScalar());
        if (n == 0)
        {
            cmd1.CommandText = "if ((select count(教师用户名) from 教师用户) < 3 ) begin update 评委中 set 评价=评委评分.评价,参赛者编号=当前组号.目前组号 ,评分1= ( select 0.3*sum(评分)/COUNT(评分) from 评委评分 where 参赛者编号=目前组号) from 当前组号 , 评委评分; if((select count (评分) from 观众评分 ,当前组号 where 观众评分.参赛者编号=当前组号.目前组号)<3) update 观众中 set 参赛者编号=当前组号.目前组号 ,评分2= ( select 0.7*(sum(评分))/(COUNT(评分)) from 观众评分 where 参赛者编号=目前组号) from 当前组号 , 观众评分 ;else update 观众中 set 参赛者编号=当前组号.目前组号 ,评分2= ( select 0.7*(sum(评分)-max(评分)-min(评分))/(COUNT(评分)-2) from 观众评分 where 参赛者编号=目前组号) from 当前组号 , 观众评分 ;insert into 参赛者 (参赛者编号,最终得分,评价) select 当前组号.目前组号 , 观众中.评分2 + 评委中.评分1 ,评委中.评价 from 当前组号, 观众中,评委中 end else begin update 评委中 set 参赛者编号=当前组号.目前组号 ,评分1= ( select 0.3*(sum(评分)-max(评分)-min(评分))/(COUNT(评分)-2) from 评委评分 where 参赛者编号=目前组号) from 当前组号 , 评委评分; if((select count (评分) from 观众评分 ,当前组号 where 观众评分.参赛者编号=当前组号.目前组号)<3) update 观众中 set 参赛者编号=当前组号.目前组号 ,评分2= ( select 0.7*(sum(评分))/(COUNT(评分)) from 观众评分 where 参赛者编号=目前组号) from 当前组号 , 观众评分 ;else update 观众中 set 参赛者编号=当前组号.目前组号 ,评分2= ( select 0.7*(sum(评分)-max(评分)-min(评分))/(COUNT(评分)-2) from 观众评分 where 参赛者编号=目前组号) from 当前组号 , 观众评分 ;insert into 参赛者 (参赛者编号,最终得分,评价) select 目前组号 , 观众中.评分2 + 评委中.评分1 ,评委中.评价 from 当前组号, 观众中,评委中 end;";
             cmd1.ExecuteNonQuery();
                Label8.Text = "计算完成";
            conn1.Close();
            
            
        }
        else
        {
            Label8.Text = "请勿重复计算";
            conn1.Close();
        }
        
        
    }
}
