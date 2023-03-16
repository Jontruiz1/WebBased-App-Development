using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations.Reservations
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblArrivalDate.Text = String.Format(Context.Items["ArrivalDate"].ToString(), "MMMM d yyyy");
                lblDepartureDate.Text = String.Format(Context.Items["DepartureDate"].ToString(), "MMMM d yyyy");
                lblPeopleNumber.Text = Context.Items["PeopleNumber"].ToString();
                lblBedType.Text = Context.Items["BedType"].ToString();
                lblSpecialRequest.Text = Context.Items["SpecialRequest"].ToString();

                if ((bool)Context.Items["AudioAid"])
                {
                    lblAudioAid.Text = "Audio Assistance = Yes";
                }
                else
                {
                    lblAudioAid.Text = "Audio Assistance = No";
                }

                if ((bool)Context.Items["VisualAid"])
                {
                    lblVisualAid.Text = "Visual Assistance = Yes";
                }
                else
                {
                    lblVisualAid.Text = "Visual Assistance = No";
                }

                if ((bool)Context.Items["MobileAid"])
                {
                    lblMobileAid.Text = "Mobile Assistance = Yes";
                }
                else
                {
                    lblMobileAid.Text = "Mobile Assistance = No";
                }

                lblFirstName.Text = Context.Items["FirstName"].ToString();
                lblLastName.Text = Context.Items["LastName"].ToString();
                lblEmailAddress.Text = Context.Items["EmailAddress"].ToString();
                lblPhone.Text = Context.Items["Phone"].ToString();
                lblPreferredMethod.Text = Context.Items["PreferredMethod"].ToString();
            }
        }

        private bool AddRecord()
        {
            try
            {
                // setup and create the connection to the database
                ADODB.Connection objConnect = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=ROYAL_INNS_SUITES_Jensen;User ID=cs440;Password=Elmhurst1871;Provider=msoledbsql";
                String SQL = "SELECT * FROM [Reservations];";

                // open the connection
                objConnect.Open(strConnection);
                objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                // add reservation record
                objRS.AddNew();

                objRS.Fields["ReservationID"].Value = Guid.NewGuid().ToString();

                objRS.Fields["ArrivalDate"].Value = lblArrivalDate.Text;
                objRS.Fields["DepartureDate"].Value = lblDepartureDate.Text;
                objRS.Fields["NumberOfPeople"].Value = lblPeopleNumber.Text;
                objRS.Fields["BedType"].Value = lblBedType.Text;

                objRS.Fields["SpecialRequest"].Value = lblSpecialRequest.Text;

                if (lblAudioAid.Text == "Audio Assistance = Yes")
                {
                    objRS.Fields["AudioAid"].Value = true;
                }
                else
                {
                    objRS.Fields["AudioAid"].Value = false;
                }

                if (lblVisualAid.Text == "Visual Assistance = Yes")
                {
                    objRS.Fields["VisualAid"].Value = true;
                }
                else
                {
                    objRS.Fields["VisualAid"].Value = false;
                }

                if (lblMobileAid.Text == "Mobile Assistance = Yes")
                {
                    objRS.Fields["MobileAid"].Value = true;
                }
                else
                {
                    objRS.Fields["MobileAid"].Value = false;
                }

                objRS.Fields["FirstName"].Value = lblFirstName.Text;
                objRS.Fields["LastName"].Value = lblLastName.Text;
                objRS.Fields["EmailAddress"].Value = lblEmailAddress.Text;
                objRS.Fields["Phone"].Value = lblPhone.Text;
                objRS.Fields["PreferredMethod"].Value = lblPreferredMethod.Text;

                objRS.Fields["DateTimeCreated"].Value = DateTime.Now.ToString();

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
            catch
            {
                return false;
            }
        }

        protected void cmdConfirm_Click(object sender, EventArgs e)
        {
            if (AddRecord() == true)
            {
                Response.Redirect("ThankYou.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }          
        }
    }
}