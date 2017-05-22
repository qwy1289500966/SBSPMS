using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SBSPMS
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection sqlcon;
        string strCon = "Data Source=192.168.50.4;Initial Catalog=SBSPMS;Persist Security Info=True;User ID=sa;Password=123456";
        private int sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Rua!";
            //int i = int.Parse("test");
            /*if (Request.Cookies["ID"] != null && Request.Cookies["PWD"] != null)
            {
                string id = Request.Cookies["ID"].Value.ToString();
                string pwd = Request.Cookies["PWD"].Value.ToString();
                Response.Redirect("New.aspx?ID="+id+"&&PWD="+pwd+"");
            }*/
            if (!IsPostBack)
            {
                ViewState["SortOrder"] = "Name";
                ViewState["OrderDire"] = "ASC";
                bind();
            }
        }

        public void bind() {
            string sqlstr = "select * from flower";
            sqlcon = new SqlConnection(strCon);
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr,sqlcon);
            DataSet myds = new DataSet();
            myda.Fill(myds,"Flower");
            DataView view = myds.Tables["Flower"].DefaultView;
            string sort = (string)ViewState["SortOrder"]+" "+(string)ViewState["OrderDire"];
            view.Sort = sort;
            GridView1.DataSource = view;
            GridView1.DataBind();
            GridView1.ShowFooter = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("New.aspx?username="+TextBox1.Text+"&password="+TextBox2.Text+"");
            if (CheckBox1.Checked)
            {
                Response.Cookies["ID"].Expires = new DateTime(2017, 06, 20);
                Response.Cookies["PWD"].Expires = new DateTime(2017, 06, 20);
                Response.Cookies["ID"].Value = TextBox1.Text;
                Response.Cookies["PWD"].Value = TextBox2.Text;
            }
            Response.Redirect("New.aspx?ID=" + TextBox1.Text + "&PWD=" + TextBox2.Text + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                Response.Redirect("http://www.google.com");
            }
            if (DropDownList1.SelectedIndex == 1)
            {
                Response.Redirect("http://www.baidu.com");
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                Response.Redirect("http://www.sougou.com");
            }
        }

        protected void Page_Error(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("导致错误的URL:<br/>");
            sb.Append(Server.HtmlEncode(Request.Url.ToString()));
            sb.Append("<br/><br/>");
            sb.Append("错误信息:<br/>");
            sb.Append(Server.GetLastError().ToString());
            Response.Write(sb.ToString());
            Server.ClearError();
        }

        private static readonly string[] users = new string[]{"admin","user"};
        private int usertype(string userid) {
            if (userid == users[0])
            {
                return 1;
            }
            if (userid == users[1])
            {
                return 2;
            }
            else
                return 0;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string userid = TextBox3.Text.ToString();
            string pwd = TextBox4.Text.ToString();
            /*Session["UserType"] = usertype(userid);
            switch (Session["UserType"].ToString())
            {
                case "1": Response.Redirect("Admin.aspx?userid=" + userid + "");
                    break;
                case "2": Response.Redirect("User.aspx?userid="+userid+"");
                    break;
                default: Response.Write("<script>alert('对不起，你不是合法用户！')</script>");
                    break;
            }*/
            if (usertype(userid)==1 || usertype(userid)==2)
            {
                Application.Lock();
            }
            switch (usertype(userid).ToString())
            {
                case "1": Application["admin"] = Convert.ToInt32(Application["admin"]) + 1;
                    break;
                case "2": Application["user"] = Convert.ToInt32(Application["user"]) + 1;
                    break;
                default: Response.Write("<script>alert('对不起，你不是合法用户！')</script>");
                    break;
            }
            Application.UnLock();
            Response.Redirect("Total.aspx?userid=" + userid);
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sPage = e.SortExpression;
            if (ViewState["SortOrder"].ToString() == sPage)
            {
                if (ViewState["OrderDire"].ToString() == "Desc")
                {
                    ViewState["OrderDire"] = "ASC";
                }
                else
                {
                    ViewState["OrderDire"] = "Desc";
                }
            }
            else
            {
                ViewState["SortOrder"] = e.SortExpression;
            }
            bind();
        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {
            HyperLink1.Visible = true;
            HyperLink1.Text = TextBox10.Text;
            HyperLink1.NavigateUrl = TextBox10.Text;
        }
    }
}