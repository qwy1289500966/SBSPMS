using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SBSPMS
{
    /// <summary>
    /// WebService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。
    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        [WebMethod]
        public string GetMsg()
        {
            return "信息";
        }
        [WebMethod]
        public string GetName(string name)
        {
            return name;
        }

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public int GetTotal(string s, int x, int y)
        {
            if (s == "+")
            {
                return x + y;
            }
            if (s == "-")
            {
                return x - y;
            }
            if (s == "*")
            {
                return x * y;
            }
            if (s == "/")
            {
                return x / y;
            }
            else
            {
                return 0;
            }
        }
    }
}
