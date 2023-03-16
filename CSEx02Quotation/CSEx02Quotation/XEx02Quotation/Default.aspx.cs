using System;
using System.Web.UI;


namespace CSEx02Quotation
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void CalcBtnClick(object sender, EventArgs e)
        {
            Page.Validate();

            if (IsValid)
            {
                double sales_price = double.Parse(s_price.Text);
                double discount_percent = double.Parse(d_percent.Text);
                double discount_amount = (discount_percent / 100) * sales_price;
                d_amount.Text = String.Format("{0:C}", discount_amount);
                t_price.Text = String.Format("{0:C}", sales_price - discount_amount);
            }
            else
            {
                d_amount.Text = "Ugh";
            }
        }
        
    }
}