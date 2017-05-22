using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBSPMS
{
    public partial class PlaceHolder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int num = int.Parse(TextBox1.Text);
                for (int i = 1; i < num; i++)
                {
                    Label l = new Label();
                    l.ID = "Label" + i.ToString();
                    l.Text = "Label" + i.ToString();
                    TextBox t = new TextBox();
                    t.ID = "TextBox" + i.ToString();
                    t.Text = "TextBox" + i.ToString();
                    Button b = new Button();
                    b.ID = "Button" + i.ToString();
                    b.Text = "Button" + i.ToString();
                    PlaceHolder1.Controls.Add(l);
                    PlaceHolder1.Controls.Add(t);
                    PlaceHolder1.Controls.Add(b);
                    PlaceHolder1.Controls.Add(new LiteralControl("<br/>"));
                }
            }
            catch (Exception el)
            {
                PlaceHolder1.Controls.Add(new LiteralControl(el.Message));
                throw;
            }
        }
    }
}