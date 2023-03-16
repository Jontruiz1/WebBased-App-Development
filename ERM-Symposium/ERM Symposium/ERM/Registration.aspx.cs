using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirstName.Focus();
            }
        }

        private void ShowMessage(String MessageToDisplay)
        {
            // define the name and type of the client script
            String csName = "PopupScript";
            Type csType = this.GetType();

            // get a ClientScriptManager object
            System.Web.UI.ClientScriptManager cs = Page.ClientScript;

            // check to see if the startup script is already registered
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                String csText = "alert('" + MessageToDisplay + "');";
                cs.RegisterStartupScript(csType, csName, csText, true);
            }
        }

        private Boolean VerifyForm()
        {
            if (txtFirstName.Text == String.Empty)
            {
                ShowMessage("Please provide your first name.");
                txtFirstName.Focus();
                return false;
            }
            else if (txtLastName.Text == String.Empty)
            {
                ShowMessage("Please provide your last name.");
                txtLastName.Focus();
                return false;
            }
            else if (txtEmailAddress.Text == String.Empty)
            {
                ShowMessage("Please provide your email address.");
                txtLastName.Focus();
                return false;
            }
            else if (optRegular.Checked == false && optFruitPlate.Checked == false && optVegetarian.Checked == false && optKosher.Checked == false && optGluttenFree.Checked == false)
            {
                ShowMessage("Please select a lunch option.");
                optRegular.Focus();
                return false;
            }
            else
            {
                return true;
            }
        }

        private void SendNotification()
        {
            try
            {
                // build the email message
                System.Net.Mail.MailMessage objMailMessage = new System.Net.Mail.MailMessage();

                objMailMessage.From = new System.Net.Mail.MailAddress("erm-webbot@elmhurst.edu");
                objMailMessage.To.Add("djensen@elmhurst.edu");
                objMailMessage.Subject = "ERM Symposium Registration Notification";
                objMailMessage.IsBodyHtml = true;

                objMailMessage.Body = "The following information has been submitted via the registration form:<br/><br/>";
                objMailMessage.Body += "Badge Name: " + txtBadgeName.Text + "<br/>";
                objMailMessage.Body += "First Name: " + txtFirstName.Text + "<br/>";
                objMailMessage.Body += "Last Name: " + txtLastName.Text + "<br/><br/>";
                objMailMessage.Body += "Lunch Option: ";

                if (optRegular.Checked == true)
                {
                    objMailMessage.Body += "Regular<br/><br/>";
                }
                else if (optFruitPlate.Checked == true)
                {
                    objMailMessage.Body += "Fruit Plate<br/><br/>";
                }
                else if (optVegetarian.Checked == true)
                {
                    objMailMessage.Body += "Vegetarian<br/><br/>";
                }
                else if (optKosher.Checked == true)
                {
                    objMailMessage.Body += "Kosher<br/><br/>";
                }
                else if (optGluttenFree.Checked == true)
                {
                    objMailMessage.Body += "Glutten Free<br/><br/>";
                }


                if (chkAudioAid.Checked == true)
                {
                    objMailMessage.Body += "Needs audio assistance<br/>";
                }

                if (chkVisualAid.Checked == true)
                {
                    objMailMessage.Body += "Needs visual assistance<br/>";
                }

                if (chkMobileAid.Checked == true)
                {
                    objMailMessage.Body += "Needs mobile assistance<br/>";
                }

                // send the email message
                System.Net.Mail.SmtpClient objSmtpClient = new System.Net.Mail.SmtpClient("relay.elmhurst.edu");
                objSmtpClient.Port = 25;
                objSmtpClient.Send(objMailMessage);

                // destroy the objects
                objSmtpClient = null;
                objMailMessage = null;
            }
            catch
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected Boolean AddRegistration()
        {
            //try
            //{
                // setup and create the connection to the database
                ADODB.Connection objConnect = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=MIT543-ERM-Symposium-Jensen;User ID=cs550;Password=Elmhurst1871;Provider=msoledbsql;";
                String SQL = "SELECT * FROM [Registrations];";

                // open the connection
                objConnect.Open(strConnection);
                objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                // add registration record
                objRS.AddNew();

                objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();

                objRS.Fields["FirstName"].Value = txtFirstName.Text;
                objRS.Fields["LastName"].Value = txtLastName.Text;

                if (txtBadgeName.Text != String.Empty)
                {
                    objRS.Fields["BadgeName"].Value = txtBadgeName.Text;
                }
                else
                {
                    objRS.Fields["BadgeName"].Value = String.Empty;
                }

                objRS.Fields["EmailAddress"].Value = txtEmailAddress.Text;

                if (optRegular.Checked == true)
                {
                    objRS.Fields["LunchOption"].Value = "Regular";
                }
                else if (optFruitPlate.Checked == true)
                {
                    objRS.Fields["LunchOption"].Value = "Fruit Plate";
                }
                else if (optVegetarian.Checked == true)
                {
                    objRS.Fields["LunchOption"].Value = "Vegetarian";
                }
                else if (optKosher.Checked == true)
                {
                    objRS.Fields["LunchOption"].Value = "Kosher";
                }
                else if (optGluttenFree.Checked == true)
                {
                    objRS.Fields["LunchOption"].Value = "Glutten Free";
                }

                objRS.Fields["AudioAid"].Value = chkAudioAid.Checked;
                objRS.Fields["VisualAid"].Value = chkVisualAid.Checked;
                objRS.Fields["MobileAid"].Value = chkMobileAid.Checked;

                objRS.Fields["IsDeleted"].Value = 0;

                // create a datetime stamp
                objRS.Fields["DateTimeCreated"].Value = DateTime.Now;

                // save the record to the database
                objRS.Update();

                // close the connection to the database
                objRS.Close();
                objConnect.Close();

                // destroy the objects
                objRS = null;
                objConnect = null;

                return true;
            //}
            //catch (Exception)
            //{
                // throw;
            //    return false;
            //}
        }

        private Boolean ProcessPayment()
        {
            return true;
        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (ProcessPayment() == true)
                {
                    if (AddRegistration() == true)
                    {
                        // send email messages
                        // SendNotification();

                        // redirect to the thank you page
                        Response.Redirect("ThankYou.aspx");
                    }
                    else
                    {
                        // redirect to the error page
                        Response.Redirect("Error.aspx?code=database");
                    }
                }
                else
                {
                    Response.Redirect("Error.aspx?code=card");
                }
            }
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.soa.org/");
        }
    }
}