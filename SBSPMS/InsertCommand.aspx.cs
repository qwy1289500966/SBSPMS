using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SBSPMS
{
    public partial class InsertCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "Data Source=192.168.50.4;Initial Catalog=SBSPMS;Persist Security Info=True;User ID=sa;Password=123456";
            SqlConnection myConnection = new SqlConnection(str);
            myConnection.Open();
            string sqlstr = "insert into BookInfo values('100011','诛仙','萧鼎','花山文艺出版社')";
            SqlCommand com = new SqlCommand(sqlstr,myConnection);
            com.ExecuteNonQuery();
            SqlCommand myCommand = new SqlCommand("select * from BookInfo", myConnection);
            SqlDataAdapter Adapter = new SqlDataAdapter();
            Adapter.SelectCommand = myCommand;
            DataSet myDs = new DataSet();
            Adapter.Fill(myDs);
            DataTable myTable = myDs.Tables[0];
            Response.Write("<h3>使用DataSet和DataAdapter查询数据库</h3>");
            Response.Write("<table border=1 cellspacing=0 cellpadding=2>");
            Response.Write("<tr bgcolor=yellow>");
            foreach (DataColumn myColumn in myTable.Columns)
            {
                Response.Write("<td>" + myColumn.ColumnName + "</td>");
            }
            Response.Write("</tr>");
            foreach (DataRow myRow in myTable.Rows)
            {
                Response.Write("<tr>");
                foreach (DataColumn myColumn in myTable.Columns)
                {
                    Response.Write("<td>" + myRow[myColumn] + "</td>");
                }
                Response.Write("</tr>");
            }
            Response.Write("</table>");
            myConnection.Close();
        }
    }
}