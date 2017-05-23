using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

namespace SBSPMS
{
    public partial class DataBindTest : System.Web.UI.Page
    {
        public string Name = "管理员";
        public DateTime LoginTime = DateTime.Now;
        protected int sum = 0;
        protected ArrayList myArray = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sum = getSum();
                myArray.Add("春天：Spring");
                myArray.Add("夏天：Summer");
                myArray.Add("秋天：Autumn");
                myArray.Add("冬天：Winter");
                DropDownList1.DataSource = myArray;
                DropDownList1.DataBind();
                DataGrid1.DataBind();

                string constr = "Data Source=192.168.50.4;Initial Catalog=SBSPMS;Persist Security Info=True;User ID=sa;Password=123456";
                string str = "select * from BookInfo";
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(str,con);
                DataSet ds = new DataSet();
                sda.Fill(ds,"BookInfo");
                ListBox1.DataSource=ds.Tables["BookInfo"];
                ListBox1.DataTextField = "Name";
                ListBox1.DataValueField = "ID";
                ListBox1.DataBind();
                con.Close();
            }
            //Page.DataBind();
        }
        protected int getSum()
        {
            for (int i = 0; i <= 100; i++)
            {
                sum += i;
            }
            return sum;
        }

        protected void Unnamed5_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = "现在的季节是："+DropDownList1.SelectedValue;
        }
    }
}