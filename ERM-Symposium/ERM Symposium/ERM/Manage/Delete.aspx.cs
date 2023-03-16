using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium.ERM.Manage
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected Boolean VerifyForm()
        {
            if (chkConfirm.Checked == false)
            {
                ShowMessage("Please confirm your action.");
                return false;
            }
            else
            {
                return true;
            }
        }

        protected Boolean DeleteRegistration()
        {
            try
            {
                // setup and create the connection to the database
                ADODB.Connection objConnect = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=MIT543-ERM-Symposium-Jensen;User ID=cs550;Password=Elmhurst1871;Provider=msoledbsql;";
                String SQL = "SELECT * FROM [Registrations] WHERE [RegistrationID] = '" + Request.QueryString["r"] + "';";

                // open the connection
                objConnect.Open(strConnection);
                objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                //objRS.Fields["IsDeleted"].Value = 1;

                // create a datetime stamp
                //objRS.Fields["DateTimeDeleted"].Value = DateTime.Now;

                // save the record to the database
                //objRS.Update();

                objRS.Delete();

                // close the connection to the database
                objRS.Close();
                objConnect.Close();

                // destroy the objects
                objRS = null;
                objConnect = null;

                return true;
            }
            catch (Exception)
            {
                // throw;
                return false;
            }
        }

        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (DeleteRegistration() == true)
                {
                    // redirect back to the dashboard
                    Response.Redirect("Dashboard.aspx");
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
            // cancel the action
            Response.Redirect("View.aspx?r=" + Request.QueryString["r"]);
        }
    }
}