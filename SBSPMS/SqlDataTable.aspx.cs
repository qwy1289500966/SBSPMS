using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SBSPMS
{
    public partial class SqlDataTable1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable("Book");
            DataColumn dc = new DataColumn("图书编号", typeof(string));
            DataColumn dc1 = new DataColumn("图书名称", typeof(string));
            DataColumn dc2 = new DataColumn("作者", typeof(string));
            DataColumn dc3 = new DataColumn("出版社", typeof(string));
            dt.Columns.Add(dc);
            dt.Columns.Add(dc1);
            dt.Columns.Add(dc2);
            dt.Columns.Add(dc3);

            DataRow dr = dt.NewRow();
            dr["图书编号"] = "100001";
            dr["图书名称"] = "西游记";
            dr["作者"] = "吴承恩";
            dr["出版社"] = "人民文学出版社";
            dt.Rows.Add(dr);

            DataRow dr1 = dt.NewRow();
            dr1["图书编号"] = "100002";
            dr1["图书名称"] = "三国演义";
            dr1["作者"] = "罗贯中";
            dr1["出版社"] = "人民文学出版社";
            dt.Rows.Add(dr1);
            Response.Write("<table bordercolor=green border=1 cellspacing=0 cellpadding=0>");
            foreach (DataColumn col in dt.Columns)
            {
                Response.Write("<td bgcolor=yellow>"+col.ColumnName+"</td>");
            }
            foreach (DataRow  myrow in dt.Rows)
            {
                Response.Write("<tr>");
                foreach (DataColumn col in dt.Columns)
                {
                    Response.Write("<td>"+myrow[col]+"</td>");
                }
                Response.Write("</tr>");
            }
            Response.Write("</table>");
        }
    }
}