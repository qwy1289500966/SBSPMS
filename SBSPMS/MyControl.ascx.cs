using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class MyControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            if (txtNum.Text == "" || txtBed.Text == "")
            {
                Label1.Text = "修改房间信息失败！";
            }
            else
            {
                string num = txtNum.Text;
                string type = drop.SelectedValue;
                string statu = dropStatu.SelectedValue;
                string book = rablBook.SelectedValue;
                string bed = txtBed.Text;
                string tv = rabTv.SelectedValue;
                Label1.Text = "修改信息成功：房号：" + num + "," + "房型：" + type + "房态：" + statu + ",";
                Label1.Text += "床位数：" + bed + "," + "电视：" + tv + "。";
            }
        }
    }
}