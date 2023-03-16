using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSCAnnualSurvey2022.PscaAnnualSurvey2022
{
    public partial class OrderForms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void CalculateTotal()
        {
            int quantity = Int32.Parse(quantityList.Text);

        }

        protected void optRegularPrice_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        protected void optPSCAPrice_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        protected void chkCopyBillingToShipping_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThankYou.aspx");
        }
    }
}