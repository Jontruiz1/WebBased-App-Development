using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations.Reservations
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            Context.Items.Add("ArrivalDate", txtArrivalDate.Text);
            Context.Items.Add("DepartureDate", txtDepartureDate.Text);
            Context.Items.Add("PeopleNumber", lstPeopleNumber.SelectedValue);

            if (optKing.Checked == true)
            {
                Context.Items.Add("BedType", "King");
            }
            else if (optTwoQueen.Checked == true)
            {
                Context.Items.Add("BedType", "Two Queen");
            }
            else if (optOneQueen.Checked == true)
            {
                Context.Items.Add("BedType", "One Queen");
            }

            if (txtSpecialRequest.Text != String.Empty)
            {
                Context.Items.Add("SpecialRequest", txtSpecialRequest.Text);
            }
            else
            {
                Context.Items.Add("SpecialRequest", String.Empty);
            }

            Context.Items.Add("AudioAid", chkAudioAid.Checked);
            Context.Items.Add("VisualAid", chkVisualAid.Checked);
            Context.Items.Add("MobileAid", chkMobileAid.Checked);

            Context.Items.Add("FirstName", txtFirstName.Text);
            Context.Items.Add("LastName", txtLastName.Text);
            Context.Items.Add("EmailAddress", txtEmailAddress.Text);
            Context.Items.Add("Phone", "(" + txtPhone1.Text + ") " + txtPhone2.Text + "-" + txtPhone3.Text);
            Context.Items.Add("PreferredMethod", lstPreferredMethod.SelectedValue);

            //Response.Redirect("Confirmation.aspx");
            Server.Transfer("Confirmation.aspx");
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtArrivalDate.Text = String.Empty;
            txtDepartureDate.Text = String.Empty;
            lstPeopleNumber.SelectedIndex = 0;
            optKing.Checked = true;
            txtSpecialRequest.Text = String.Empty;
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtEmailAddress.Text = String.Empty;
            txtPhone1.Text = String.Empty;
            txtPhone2.Text = String.Empty;
            txtPhone3.Text = String.Empty;
            lstPreferredMethod.SelectedIndex = 0;
        }
    }
}