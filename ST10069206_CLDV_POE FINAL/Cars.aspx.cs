using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

//This is the C# file where I coded the buttons.

namespace ST10069206_CLDV_POE_FINAL
{
    public partial class Cars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible = false;
           
        }
        /// <summary>
        /// This method is for the insert button. It inserts the data into the database. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand com = new SqlCommand(@"INSERT INTO Car_ST10069206(CarNo,CarMake,Model,BodyType,KilometersTravelled,ServiceKM,available) 
                                                VALUES(@CarNo, @CarMake,@Model,@BodyType,@KmTravelled,@ServiceKm,@available)", con);
                com.Parameters.AddWithValue("CarNo", txtAddCarNo.Text.Trim());
                com.Parameters.AddWithValue("CarMake", txtAddMake.Text);
                com.Parameters.AddWithValue("Model", txtAddModel.Text);
                com.Parameters.AddWithValue("BodyType", txtAddBodyType.Text);
                com.Parameters.AddWithValue("KmTravelled", Convert.ToInt32(txtAddKmTravel.Text));
                com.Parameters.AddWithValue("ServiceKm", Convert.ToInt32(txtAddKmService.Text));
                com.Parameters.AddWithValue("available", txtAddAvailable.Text.Trim());
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

        /// <summary>
        /// This method is for the clear button, which clears all the data in the text field. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAddCarNo.Text=string.Empty;
            txtAddMake.Text=string.Empty;   
            txtAddModel.Text=string.Empty;
            txtAddKmTravel.Text = string.Empty;
            txtAddKmService.Text = string.Empty;    
            txtAddAvailable.Text = string.Empty;   
            txtAddBodyType.Text = string.Empty;
        }

        /// <summary>
        /// This method is for the update button, which updates the data in the database. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //GridView1.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"UPDATE [Car_ST10069206] 
                SET [CarMake]='" + txtUpdateMake.Text + "'," +
                "[Model]='" + txtUpdateModel.Text + "', [BodyType]='" + txtUpdateBodyType.Text + "'," +
                "[KilometersTravelled]='" + Convert.ToInt32(txtUpdateKmTravel.Text) + "'," +
                "[ServiceKM]='" + Convert.ToInt32( txtUpdateServiceKm.Text) + "'," +
                "[available]='" + txtUpdateAvailable.Text + "' " +
                "WHERE [CarNo]='" + txtUpdateCarNo.Text + "'", con);
                int correctly = cmd.ExecuteNonQuery();
                con.Close();
                if (correctly == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Updated');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid entry,Try again');", true);
                }
                con.Close();
            }
        }

        /// <summary>
        /// This method is for the view button which displays all the data in a table from the database. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnView_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Car_ST10069206", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }
        }

        /// <summary>
        /// This method is for the clear button, which clears all the data in the text fields. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnClear2_Click(object sender, EventArgs e)
        {
            txtUpdateCarNo.Text=string.Empty;   
            txtUpdateMake.Text=string.Empty;
            txtUpdateModel.Text=string.Empty;
            txtUpdateServiceKm.Text=string.Empty;
            txtUpdateKmTravel.Text=string.Empty;
            txtUpdateBodyType.Text=string.Empty;
            txtUpdateAvailable.Text=string.Empty;   
        }

        /// <summary>
        /// This method is for the hide button, which hides the table. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnHide_Click(object sender, EventArgs e)
        {
            GridView2.Visible=false;
        }

        /// <summary>
        /// This method is for the delect button which deletes data frm the database. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"DELETE from Car_ST10069206
                                    WHERE [CarNo]='"+txtDeleteCarNo.Text + "'", con);
                int connect=cmd.ExecuteNonQuery();
                if (connect==1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Deleted');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid entry,Try again');", true);
                }
                con.Close();
            }
        }
        /// <summary>
        /// This method is for the clear button which clears the text field. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnClear3_Click(object sender, EventArgs e)
        {
            txtDeleteCarNo.Text=string.Empty;  
        }
    }
}