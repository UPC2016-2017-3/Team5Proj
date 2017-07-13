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

public partial class 学生查看排名 : System.Web.UI.Page
{
    
        protected void Page_Load(object sender, EventArgs e)
    {


        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = @"Data Source=119.29.143.19;Initial Catalog=打分;User ID=lpl;Password=123";
        //定义SQL语句 
        string SqlStr = "select * from 参赛者 order by 最终得分 desc";
        string SqlStr1 = "select * from 主办方";
        sqlCon.Open();
        //实例化SqlDataAdapter对象 
        SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
        SqlDataAdapter da1 = new SqlDataAdapter(SqlStr1, sqlCon);
        //实例化数据集DataSet 
        DataSet ds = new DataSet();
        da.Fill(ds, "参赛者");
        DataSet ds1 = new DataSet();
        da1.Fill(ds1, "主办方");
        //设置datagriedView控件的数据源
        GridView1.DataSource = ds;
        GridView1.DataMember = "参赛者";
        GridView2.DataSource = ds1;
        GridView2.DataMember = "主办方";
        //调用DataBind方法显示数据
        GridView1.DataBind();
        GridView2.DataBind();
        sqlCon.Close();

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("学生界面.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}