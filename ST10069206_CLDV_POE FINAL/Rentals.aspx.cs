using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10069206_CLDV_POE_FINAL
{
    public partial class Rentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible = false;

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand com = new SqlCommand(@"INSERT INTO Rental_ST10069206(CarNo,InspectorName,DriverName
                                                ,RentalFee,startDate,endDate) 
                                                VALUES(@CarNo, @InspectorName,@DriverName,@RentalFee,
                                                @startDate,@endDate) ", con);
                com.Parameters.AddWithValue("CarNo", txtAddCarNo.Text.Trim());
                com.Parameters.AddWithValue("InspectorName", txtAddInspectorName.Text);
                com.Parameters.AddWithValue("DriverName", txtAddDriverName.Text);
                com.Parameters.AddWithValue("RentalFee", Convert.ToInt32( txtAddRentalFee.Text));
                com.Parameters.AddWithValue("startDate", Convert.ToDateTime(txtAddStartDate.Text));
                com.Parameters.AddWithValue("endDate", Convert.ToDateTime(txtAddEndDate.Text));
                con.Open();
                int correctly = com.ExecuteNonQuery();
                con.Close();
                if (correctly == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Inserted');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Try again');", true);
                }
                con.Close();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAddCarNo.Text = string.Empty;
            txtAddInspectorName.Text = string.Empty;
            txtAddDriverName.Text = string.Empty;
            txtAddRentalFee.Text = string.Empty;
            txtAddStartDate.Text = string.Empty;
            txtAddEndDate.Text = string.Empty;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Rental_ST10069206", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }
        }


        protected void btnHide_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
        }

    }
}