using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class Home : System.Web.UI.Page
    {
        static int count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (count >= 1)
            {
                ListBox1.Items.Add("Winter");
                ListBox1.Items.Add("Spring");
                ListBox1.Items.Add("Summer");
                ListBox1.Items.Add("Fall");
                --count;
            }

        }

        protected void Calc_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                int result = txtValue01.Add(1);
            }
        }
    }
}