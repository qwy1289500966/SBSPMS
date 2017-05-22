using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class BulletedList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            Label1.Visible = true;
            switch (e.Index)
            {
                case 0: Label1.Text = "你最喜欢的选秀节目是中国达人秀！";
                    break;
                case 1: Label1.Text = "你最喜欢的选秀节目是超级女声！";
                    break;
                case 2: Label1.Text = "你最喜欢的选秀节目是我型我秀！";
                    break;
                case 3: Label1.Text = "你最喜欢的选秀节目是舞林争霸！";
                    break;
                default: Label1.Text = "你的选择错误！";
                    break;
            }
        }
    }
}