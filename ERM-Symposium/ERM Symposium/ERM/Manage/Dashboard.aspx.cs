using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERM_Symposium.ERM.Manage
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // display the data grid
                DisplayRegistrationDataGrid();
            }
        }

        protected void DisplayRegistrationDataGrid()
        {
            // declare the database variables
            String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=MIT543-ERM-Symposium-Jensen;User ID=cs550;Password=Elmhurst1871;";
            String SQL = "SELECT [RegistrationID], [FirstName] + ' ' + [LastName] AS [Name] FROM [Registrations] WHERE [IsDeleted] = 0 ORDER BY [Name];";

            // setup the connection, command, data adapter, and data set objects
            System.Data.SqlClient.SqlConnection objConnection = new System.Data.SqlClient.SqlConnection(strConnection);
            System.Data.SqlClient.SqlCommand objCommand = new System.Data.SqlClient.SqlCommand(SQL, objConnection);
            System.Data.SqlClient.SqlDataAdapter objDataAdapter = new System.Data.SqlClient.SqlDataAdapter(objCommand);
            System.Data.DataSet objDataSet = new System.Data.DataSet();

            // fill the data adapter
            objDataAdapter.Fill(objDataSet, "Registrations");

            // check for no records
            if (objDataSet.Tables[0].Rows.Count == 0)
            {
                RegistrationGridView.Visible = false;
                lblNoRecords.Visible = true;
            }
            else
            {
                // data bind the grid view
                RegistrationGridView.DataSource = objDataSet;
                RegistrationGridView.DataBind();
                RegistrationGridView.Visible = true;
                lblNoRecords.Visible = false;
            }

            // close the connection
            objConnection.Close();

            // destroy the object
            objDataSet = null;
            objDataAdapter = null;
            objCommand = null;
            objConnection = null;
        }

        protected void RegistrationGridView_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            // handle the paging
            RegistrationGridView.PageIndex = e.NewPageIndex;
            DisplayRegistrationDataGrid();
        }
    }
}