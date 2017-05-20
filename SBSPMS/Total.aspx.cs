using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class Total : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = Request.QueryString["userid"].ToString();
            Response.Write(userid + "！欢迎你<br>");
            if (Application["admin"] != null)
            {
                Response.Write("<br>管理员的访问量是："+Application["admin"].ToString());
            }
            else
            {
                Response.Write("<br>管理员的访问量是：" + 0);
            }
            if (Application["user"] != null)
            {
                Response.Write("<br>用户的访问量是："+Application["user"].ToString());
            }
            else
            {
                Response.Write("<br>用户的访问量是：" + 0);
            }
        }
    }
}