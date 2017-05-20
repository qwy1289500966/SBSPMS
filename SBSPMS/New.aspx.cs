using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Response.Write("用户名："+Request.QueryString["username"]+"<br />");
            Response.Write("密  码："+Request.QueryString["password"]);*/
            if (Request.QueryString["ID"] != null && Request.QueryString["PWD"] != null)
            {
                Response.Write("" + Request.QueryString["ID"] + "，欢迎光临本网站！");
            }
        }
    }
}