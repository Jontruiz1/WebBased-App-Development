using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium.ERM.Manage
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // load the specific registration record
                GetRegistrationDetails();

                // set focus to the first field
                txtFirstName.Focus();
            }
        }

        protected void GetRegistrationDetails()
        {
            // setup and create the connection to the database
            String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=MIT543-ERM-Symposium-Jensen;User ID=cs550;Password=Elmhurst1871;";
            String SQL = "SELECT * FROM [Registrations] WHERE [RegistrationID] = '" + Request.QueryString["r"] + "'";
            System.Data.SqlClient.SqlConnection objConnect = new System.Data.SqlClient.SqlConnection(strConnection);

            // create a command object
            System.Data.SqlClient.SqlCommand objCommand = new System.Data.SqlClient.SqlCommand(SQL);

            // Open the database connection
            objCommand.Connection = objConnect;
            objCommand.Connection.Open();

            // create a data reader
            System.Data.SqlClient.SqlDataReader objReader = objCommand.ExecuteReader();

            if (objReader.HasRows == true)
            {
                while (objReader.Read())
                {
                    txtFirstName.Text = objReader["FirstName"].ToString();
                    txtLastName.Text = objReader["LastName"].ToString();
                    txtBadgeName.Text = objReader["BadgeName"].ToString();

                    txtEmailAddress.Text = objReader["EmailAddress"].ToString();

                    if (objReader["LunchOption"].ToString() == "Regular")
                    {
                        optRegular.Checked = true;
                    }
                    else if (objReader["LunchOption"].ToString() == "Fruit Plate")
                    {
                        optFruitPlate.Checked = true;
                    }
                    else if (objReader["LunchOption"].ToString() == "Vegetarian")
                    {
                        optVegetarian.Checked = true;
                    }
                    else if (objReader["LunchOption"].ToString() == "Kosher")
                    {
                        optKosher.Checked = true;
                    }
                    else if (objReader["LunchOption"].ToString() == "Gluten Free")
                    {
                        optGluttenFree.Checked = true;
                    }


                    if (objReader["AudioAid"].ToString() == "1")
                    {
                        chkAudioAid.Checked = true;
                    }

                    if (objReader["VisualAid"].ToString() == "1")
                    {
                        chkVisualAid.Checked = true;
                    }

                    if (objReader["MobileAid"].ToString() == "1")
                    {
                        chkMobileAid.Checked = true;
                    }
                }
            }

            // close the connection to the database
            objReader.Close();
            objConnect.Close();

            // destroy the objects
            objReader = null;
            objCommand = null;
            objConnect = null;
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
                txtEmailAddress.Focus();
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

        protected Boolean UpdateRegistration()
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


                if (chkAudioAid.Checked == true)
                {
                    objRS.Fields["AudioAid"].Value = 1;
                }
                else
                {
                    objRS.Fields["AudioAid"].Value = 0;
                }

                if (chkVisualAid.Checked == true)
                {
                    objRS.Fields["VisualAid"].Value = 1;
                }
                else
                {
                    objRS.Fields["VisualAid"].Value = 0;
                }

                if (chkMobileAid.Checked == true)
                {
                    objRS.Fields["MobileAid"].Value = 1;
                }
                else
                {
                    objRS.Fields["MobileAid"].Value = 0;
                }

                // create a datetime stamp
                objRS.Fields["DateTimeModified"].Value = DateTime.Now;

                // save the record to the database
                objRS.Update();

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

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (UpdateRegistration() == true)
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