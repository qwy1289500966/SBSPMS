using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class LinqToSqlTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataClasses1DataContext da = new DataClasses1DataContext();
                var user = from s in da.Students
                           select s;
                GridView1.DataSource = user;
                GridView1.DataBind();

                Binder();
                Binder2();
                Bind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var user = from s in da.Students
                       where s.StuName == TextBox1.Text
                       select s;
            GridView1.DataSource = user;
            GridView1.DataBind();
        }

        private void Binder()
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var user = from s in da.Students
                       select s;
            GridView2.DataSource = user;
            GridView2.DataBind();
        }
        private void Binder2()
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var user = from s in da.Students
                       select s;
            GridView3.DataSource = user;
            GridView3.DataBind();
        }

        private void Bind()
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var user = from s in da.Students
                       select s.StuName;
            DropDownList1.DataSource = user;
            DropDownList1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            Students s = new Students();
            s.ID = Convert.ToInt32(TextBox2.Text);
            s.StuName = TextBox3.Text;
            s.Phone = TextBox4.Text;
            s.Address = TextBox5.Text;
            s.City = TextBox6.Text;
            da.Students.InsertOnSubmit(s);
            da.SubmitChanges();

            Binder();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var result = from s in da.Students
                         where s.StuName == DropDownList1.Text
                         select s;
            foreach (Students s in result)
            {
                s.StuName = DropDownList1.Text;
                s.Phone = TextBox7.Text;
                s.Address = TextBox8.Text;
                s.City = TextBox9.Text;
            }
            da.SubmitChanges();
            Binder2();
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext da = new DataClasses1DataContext();
            var result = from s in da.Students
                         where s.StuName == DropDownList1.Text
                         select s;
            da.Students.DeleteAllOnSubmit(result);
            da.SubmitChanges();
            Binder2();
            Bind();
        }
    }
}