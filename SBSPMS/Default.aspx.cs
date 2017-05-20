using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace SBSPMS
{
    public partial class Default : System.Web.UI.Page
    {
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
            Session["UserType"] = usertype(userid);
            switch (Session["UserType"].ToString())
            {
                case "1": Response.Redirect("Admin.aspx?userid=" + userid + "");
                    break;
                case "2": Response.Redirect("User.aspx?userid="+userid+"");
                    break;
                default: Response.Write("<script>alert('对不起，你不是合法用户！')</script>");
                    break;
            }
        }
    }
}