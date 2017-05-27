using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class StudentTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Student> stud = new List<Student> {
                new Student {name="Marry",age=2,address="北京"},
                new Student{name="John",age=37,address="北京"},
                new Student{name="Petter",age=38,address="上海"}
            };
            IEnumerable<string> studentQuery =
                from s in stud
                where s.address == "北京"
                orderby s.age descending
                select s.name;
            Response.Write("地址在北京的学生有："+"<br>");
            foreach (var a in studentQuery)
            {
                Response.Write(a+"<br>");
            }
        }
    }
}