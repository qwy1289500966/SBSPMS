using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace SBSPMS
{
    public partial class FileTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List();
            }
        }
        public void List()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Nama",typeof(string)));
            string serverPath = Server.MapPath("File");
            DirectoryInfo dir = new DirectoryInfo(serverPath);
            foreach (FileInfo filename in dir.GetFiles())
            {
                DataRow dr = dt.NewRow();
                dr[0] = filename;
                dt.Rows.Add(dr);
            }
            ListBox1.DataSource = dt;
            ListBox1.DataTextField = "Name";
            ListBox1.DataValueField = "Name";
            ListBox1.SelectedIndex = 0;
            ListBox1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="")
            {
                Label2.Text = "请输入文件名！";
            }
            else
            {
                try
                {
                    string path = Server.MapPath("File")+"\\"+TextBox1.Text+DropDownList1.Text;
                    FileInfo fi = new FileInfo(path);
                    if (!fi.Exists)
                    {
                        fi.Create();
                        Label2.Text = "创建成功！文件名:" + TextBox1.Text + DropDownList1.Text;
                        List();
                    }
                }
                catch (Exception error)
                {
                    
                    Response.Write(error.ToString());
                }
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["txt"]=ListBox1.SelectedValue.ToString();
        }
    }
}