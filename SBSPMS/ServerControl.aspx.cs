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
    public partial class ServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = "Data Source=192.168.50.4;Initial Catalog=SBSPMS;Persist Security Info=True;User ID=sa;Password=123456";
                string str = "select * from BookInfo";
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(str,con);
                DataSet ds = new DataSet();
                sda.Fill(ds,"BookInfo");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.DetailView1.PageIndex = this.GridView2.SelectedRow.DataItemIndex;
        }
    }
}