using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class LinqTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] words = { "aPPLE", "BIUeBeRry", "cHeRry", "HAryY", "IOvE" };
            int i = 0;
            var upperLowerWords =
                from w in words
                select new
                {
                    Upper = w.ToUpper(),
                    Lower = w.ToLower()
                };
            foreach (var ul in upperLowerWords)
            {
                Response.Write(words[i] + "单词的大写为：" + ul.Upper + "<BR>");
                Response.Write(words[i] + "单词的小写为：" + ul.Lower + "<BR>");
                i++;
            }
        }
    }
}