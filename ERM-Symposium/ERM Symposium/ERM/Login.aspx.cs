using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium.ERM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // set focus to the first field
            txtUsername.Focus();
        }

        protected void ShowMessage(String MessageToDisplay)
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

        protected Boolean VerifyForm()
        {
            if (txtUsername.Text == String.Empty)
            {
                ShowMessage("Please provide your username.");
                txtUsername.Focus();
                return false;
            }
            else if (txtPassword.Text == String.Empty)
            {
                ShowMessage("Please provide your password.");
                txtPassword.Focus();
                return false;
            }
            else
            {
                return true;
            }
        }

        protected Boolean AuthenticateUser()
        {
            try
            {
                if (txtUsername.Text == "bob" && txtPassword.Text == "smith")
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {
                // throw;
                return false;
            }
        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (AuthenticateUser() == true)
                {
                    // redirect to the Dashboard page
                    //Response.Redirect("/ERM-Symposium/Manage/Dashboard.aspx");
                    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                }
                else
                {
                    // redirect to the error page
                    Response.Redirect("Error.aspx");
                }
            }
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            // redirect to the homepage
            Response.Redirect("http://www.elmhurst.edu/");
        }
    }
}