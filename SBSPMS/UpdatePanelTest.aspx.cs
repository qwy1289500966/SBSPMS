using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class UpdatePanelTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Binder();
            }
        }

        protected void Binder() {
            DataClasses2DataContext da = new DataClasses2DataContext();
            GridView1.DataSource = da.BookInfo.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses2DataContext da = new DataClasses2DataContext();
            BookInfo book = new BookInfo();
            book.ID = TextBox1.Text;
            book.Name = TextBox2.Text;
            book.Author = TextBox3.Text;
            book.Press = TextBox4.Text;
            da.BookInfo.InsertOnSubmit(book);
            da.SubmitChanges();
            Binder();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}