using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExam.FinalExam
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected Boolean AddRegistration()
        {
            try
            {
                // create connection to database
                ADODB.Connection objConnection = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                string strConnection = "DATABASE CONNECTION STRING HERE";
                string sql = "SELECT * FROM [Jonathan_Ruiz];";

                objConnection.Open(strConnection);
                objRS.Open(sql, objConnection, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                // add order record
                objRS.AddNew();

                objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();
                if (conRegFees.Visible)
                {
                    foreach (ListItem item in conRegFees.Items)
                    {
                        if (item.Selected)
                        {
                            objRS.Fields["Choice"].Value = item.Text.ToString();
                            break;
                        }
                    }
                }
                else
                {
                    objRS.Fields["Choice"].Value = chkPreWorkshop.Text.ToString();
                }

                objRS.Fields["Total"].Value = lblSubTotal.Text.ToString();
                // billing
                objRS.Fields["BillingName"].Value = txtBillName.Text;
                objRS.Fields["BillingAddress1"].Value = txtBillAdd1.Text;
                objRS.Fields["BillingAddress2"].Value = txtBillAdd2.Text;
                objRS.Fields["BillingCity"].Value = txtBillCity.Text;
                objRS.Fields["BillingState"].Value = txtBillState.Text;
                objRS.Fields["BillingZipCode"].Value = txtBillZip.Text;

                // shipping
                objRS.Fields["ShippingName"].Value = txtShipName.Text;
                objRS.Fields["ShippingAddress1"].Value = txtShipAdd1.Text;
                objRS.Fields["ShippingAddress2"].Value = txtShipAdd2.Text;
                objRS.Fields["ShippingCity"].Value = txtShipCity.Text;
                objRS.Fields["ShippingState"].Value = txtShipState.Text;
                objRS.Fields["ShippingZipCode"].Value = txtShipZip.Text;

                // personal info
                objRS.Fields["JobTitle"].Value = txtJob.Text;
                objRS.Fields["CompanyName"].Value = txtCompany.Text;
                objRS.Fields["Phone"].Value = txtPhone.Text;
                objRS.Fields["Email"].Value = txtEmail.Text;

                // Guids
                objRS.Fields["TransactionID"].Value = Guid.NewGuid().ToString();
                objRS.Fields["DateTimeCreated"].Value = DateTime.Now.ToString();

                objRS.Update();

                objRS.Close();
                objConnection.Close();

                // destroy 
                objRS = null;
                objConnection = null;

                return true;
            }
            catch
            {
                return false;
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                if (AddRegistration())
                {
                    Response.Redirect("~/FinalExam/ThankYou.aspx");
                }
                else
                {
                    Response.Redirect("~/FinalExam/Error.aspx");
                }
            }
        }
        protected void conRegFees_SelectedIndexChanged(object sender, EventArgs e)
        {
            string currCost = "";
            foreach (ListItem item in conRegFees.Items)
            {
                if (item.Selected)
                {
                    currCost = item.Value.ToString();
                    break;
                }
            }

            decimal nomon = Decimal.Parse(currCost);
            currCost = String.Format("{0:C}", nomon);
            lblSubTotal.Text = currCost;

        }

        protected void chkPreWorkshop_CheckedChanged(object sender, EventArgs e)
        {
            string currCost;
            if (chkPreWorkshop.Checked)
            {
                conRegFees.Visible = false;
                lblSubTotal.Text = "$50.00";
            }
            else
            {
                conRegFees.Visible = true;
                currCost = conRegFees.Items[0].Value.ToString();
                decimal nomon = Decimal.Parse(currCost);
                currCost = String.Format("{0:C}", nomon);
                lblSubTotal.Text = currCost;
            }
        }

        protected void chkBillToShip_CheckedChanged(object sender, EventArgs e)
        {
            if (chkBillToShip.Checked)
            {
                txtShipName.Text = txtBillName.Text;
                txtShipAdd1.Text = txtBillAdd1.Text;
                txtShipAdd2.Text = txtBillAdd2.Text;
                txtShipCity.Text = txtBillCity.Text;
                txtShipState.Text = txtBillState.Text;
                txtShipZip.Text = txtBillZip.Text;

                chkBillToShip.Focus();
            }
        }

        protected void lbtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);

        }
    }
}