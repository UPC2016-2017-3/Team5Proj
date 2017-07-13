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

public partial class 管理员界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //实例化SqlConnection对象 
        SqlConnection sqlCon = new SqlConnection();
        //实例化SqlConnection对象连接数据库的字符串 
        sqlCon.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        sqlCon.Open();
        //定义SQL语句 
        string SqlStr = "select * from 用户名密码 order by 组号 asc";
        string SqlStr1 = "select * from 教师用户 order by 教师用户名 asc";
        //实例化SqlDataAdapter对象 
        SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
        SqlDataAdapter da1 = new SqlDataAdapter(SqlStr1, sqlCon);
        //实例化数据集DataSet 
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        da.Fill(ds, "Discussion");
        da1.Fill(ds1, "Discussion1");
        //设置datagriedView控件的数据源
        GridView1.DataSource = ds.Tables[0];
        GridView2.DataSource = ds1.Tables[0];
        //调用DataBind方法显示数据
        GridView1.DataBind();
        GridView2.DataBind();
        sqlCon.Close();

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

            string sql = "select * from 用户名密码 where 组号='" + username + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            DataSet ds = new DataSet();
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(n);

            //int n = (int)cmd.ExecuteScalar();
            //dataAdapter.Fill(result);

            if (n == 0)//判断是否有匹配的用户名和密码
            {    if(username=="")
{
Label2.Text="用户名不能为空";
}
else{


                string _sql2 = "insert into 用户名密码(组号,密码)values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                cmd2.ExecuteNonQuery();
                string _sql3 = "select 组号 from 用户名密码";
                SqlDataAdapter sda1 = new SqlDataAdapter(_sql3, conn);
                DataSet ds1 = new DataSet();
                sda1.Fill(ds);
                // GridView1.DataSource = ds.Tables[0].DefaultView;
                Label2.Text = "添加成功！";
}

            }
            else
            {
                Label2.Text = "已有该用户";

            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //string strcon = "Data Source=LENOVO-PC;DataBase=打分;";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        string _sql = "select 组号,密码 from 用户名密码";
        // string _sql = "select id as '类型编号',roomtype as '类型名称',price as '价格' from type11 where id='" + textBox4.Text + "' and roomtype='" + textBox5.Text + "' and price='" + textBox6.Text + "'";
        //string _sql = "select count(*) from  type11";
        // SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand(_sql, conn);
        //检查是否有该记录，有就关闭连接，无则添加
        try
        {
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(_sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count == 1)
            {
                Label2.Text = "已有记录";
            }

            //添加新记录
            else
            {
if(TextBox1.Text=="")
{
Label2.Text="用户名不能为空";
}
else{

                string _sql2 = "delete from 用户名密码 where 组号='"+TextBox1.Text+"'";
                SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                cmd2.ExecuteNonQuery();
                Label2.Text = "删除成功！";
}
            }
        }
        finally
        {
            conn.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //string strcon = "Data Source=LENOVO-PC;DataBase=打分;";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        string _sql = "select 组号,密码 from 用户名密码";
        SqlCommand cmd = new SqlCommand(_sql, conn);
        //检查是否有该记录，有就关闭连接，无则添加
        try
        {
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(_sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label2.Text = "没有记录";
            }

            //添加新记录
            else
            {
                string _sql2 = "update 用户名密码 set 密码='" + TextBox2.Text + "' where 组号='" + TextBox1.Text + "';";
                SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                cmd2.ExecuteNonQuery();
                Label2.Text = "修改成功！";
            }
        }
        finally
        {
            conn.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            string username = TextBox1.Text.Trim().ToString();
            string password = TextBox2.Text.Trim().ToString();
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
            conn.Open();

            string sql = "select * from 教师用户 where 教师用户名='" + username + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            DataSet ds = new DataSet();
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(n);

            //int n = (int)cmd.ExecuteScalar();
            //dataAdapter.Fill(result);

            if (n == 0)//判断是否有匹配的用户名和密码
            {
             if(TextBox1.Text=="")
          {
            Label2.Text="用户名不能为空";
         }
           else{

                string _sql2 = "insert into 教师用户(教师用户名,密码)values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                cmd2.ExecuteNonQuery();
                string _sql3 = "select 教师用户名 from 教师用户";
                SqlDataAdapter sda1 = new SqlDataAdapter(_sql3, conn);
                DataSet ds1 = new DataSet();
                sda1.Fill(ds);
                // GridView1.DataSource = ds.Tables[0].DefaultView;
                Label2.Text = "添加成功！";
}

            }
            else
            {
                Label2.Text = "已有该用户";

            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


    }
    protected void Button5_Click(object sender, EventArgs e)
    {      
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        string _sql = "select 教师用户名,密码 from 密码";
        SqlCommand cmd = new SqlCommand(_sql, conn);
        //检查是否有该记录，有就关闭连接，无则添加
        try
        {
            conn.Open();
                if (TextBox1.Text == "")
                {
                    Label2.Text = "用户名不能为空";
                }
                else
                {
                    string _sql2 = "delete from 教师用户 where 教师用户名='" + TextBox1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                    cmd2.ExecuteNonQuery();
                    Label2.Text = "删除成功！";
                    conn.Close();
                }
            }
    //}
        
        finally
        {
            conn.Close();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //string strcon = "Data Source=LENOVO-PC;DataBase=打分;";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        conn.Open();
        string _sql = "select 教师用户名 from 教师用户 where 教师用户名='" + TextBox1.Text + "';";
       SqlCommand cmd = new SqlCommand(_sql, conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n > 0)
            {
                if (TextBox1.Text == "")
                {
                    Label2.Text = "用户名不能为空";
                }
                else
                {
                    string _sql2 = "update 教师用户 set 密码='" + TextBox2.Text + "' where 教师用户名='" + TextBox1.Text + "';";
                    SqlCommand cmd2 = new SqlCommand(_sql2, conn);
                    cmd2.ExecuteNonQuery();
                    Label2.Text = "修改成功！";
                    conn.Close();
                }
            }
            else
            {
                Label2.Text = "没有记录";
        }
            conn.Close();
      
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string strcon = "Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        SqlConnection conn1 = new SqlConnection(strcon);
        SqlCommand cmd1 = conn1.CreateCommand();
        cmd1.CommandText = "delete from 参赛者;delete from 观众评分;delete from 评委评分";
        conn1.Open();
        cmd1.ExecuteNonQuery();
        conn1.Close();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string strcon = "Data Source=119.29.143.19;Initial Catalog=打分;User ID=sa;Password=sasa";
        SqlConnection conn1 = new SqlConnection(strcon);
        SqlCommand cmd1 = conn1.CreateCommand();
        cmd1.CommandText = "delete from 参赛者;delete from 观众评分;delete from 评委评分;delete from 用户名密码;delete from 主办方; delete from 教师用户";
        conn1.Open();
        cmd1.ExecuteNonQuery();
        conn1.Close();
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        string strcon = "Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        SqlConnection conn1 = new SqlConnection(strcon);
        SqlCommand cmd1 = conn1.CreateCommand();
        cmd1.CommandText = "insert into 主办方(规则) values ('"+TextArea1.InnerText+"')";
        conn1.Open();
        cmd1.ExecuteNonQuery();
        conn1.Close();
    }
}