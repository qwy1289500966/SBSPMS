using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class Validator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "123456")
            {
                Label1.Text = "欢迎你，登陆成功！";
            }
            else
            {
                Label1.Text = "你输入的用户名或密码错误，请重新输入！";
            }
        }
    }
}