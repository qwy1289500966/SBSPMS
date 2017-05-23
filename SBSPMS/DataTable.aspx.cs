using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SBSPMS
{
    public partial class SqlDataTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable("Book");
            DataColumn dc = new DataColumn("图书编号", typeof(string));
            DataColumn dc1 = new DataColumn("图书名称", typeof(string));
            DataColumn dc2 = new DataColumn("作者", typeof(string));
            DataColumn dc3 = new DataColumn("出版社", typeof(string));
            dt.Columns.Add(dc);
        }
    }
}