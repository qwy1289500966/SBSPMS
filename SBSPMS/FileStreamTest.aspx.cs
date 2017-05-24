using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SBSPMS
{
    public partial class FileStreamTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (DriveInfo di in DriveInfo.GetDrives())
                {
                    TreeNode node = new TreeNode();
                    node.Value = di.Name;
                    if (di.IsReady)
                    {
                        node.Text = di.Name + "可用空间为：" + di.AvailableFreeSpace + "字节";
                    }
                    else
                    {
                        node.Text = di.Name + "没有准备好！";
                    }
                    this.TreeView1.Nodes.Add(node);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = TextBox1.Text;
            DriveInfo di = new DriveInfo(str);
            Response.Write("<h4>获取本地驱动器信息</h4>");
            Response.Write("驱动器的名称为：" + di.Name + "");
            Response.Write("类型：" + di.DriveType + "");
            Response.Write("可用空间：" + di.AvailableFreeSpace + "");
            Response.Write("文件系统：" + di.DriveFormat + "");
            Response.Write("总空间：" + di.TotalSize.ToString() + "");
        }
    }
}