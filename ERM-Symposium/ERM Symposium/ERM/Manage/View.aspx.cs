using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium.ERM.Manage
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // load the specific registration record
                GetRegistrationDetails();
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
                    lblFirstName.Text = objReader["FirstName"].ToString();
                    lblLastName.Text = objReader["LastName"].ToString();
                    lblBadgeName.Text = objReader["BadgeName"].ToString();

                    lblEmailAddress.Text = objReader["EmailAddress"].ToString();

                    lblLunchOption.Text = objReader["LunchOption"].ToString();

                    if (objReader["AudioAid"].ToString() == "1")
                    {
                        lblAudio.Text = "Requires some audio assistance.";
                    }
                    else
                    {
                        lblAudio.Text = "Does not require audio assistance.";
                    }

                    if (objReader["VisualAid"].ToString() == "1")
                    {
                        lblVisual.Text = "Requires some visual assistance.";
                    }
                    else
                    {
                        lblVisual.Text = "Does not require visual assistance.";
                    }

                    if (objReader["MobileAid"].ToString() == "1")
                    {
                        lblMobile.Text = "Requires some mobile assistance.";
                    }
                    else
                    {
                        lblMobile.Text = "Does not require mobile assistance.";
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

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            // redirect to the edit page
            Response.Redirect("Update.aspx?r=" + Request.QueryString["r"]);
        }

        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            // redirect to the delete page
            Response.Redirect("Delete.aspx?r=" + Request.QueryString["r"]);
        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            // redirect to the dashboard
            Response.Redirect("Dashboard.aspx");
        }
    }
}