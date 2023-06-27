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
    public partial class Drivers : System.Web.UI.Page
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
                SqlCommand com = new SqlCommand(@"INSERT INTO Driver_ST10069206(DriverName,DriverAddress,
                                                DriverEmail,DriverMobile) 
                                                VALUES(@DriverName, @DriverAddress,@DriverEmail,
                                                @DriverMobile)", con);
                com.Parameters.AddWithValue("DriverName", txtAddDriverName.Text.Trim());
                com.Parameters.AddWithValue("DriverAddress", txtAddDriverAddress.Text);
                com.Parameters.AddWithValue("DriverEmail", txtAddDriverEmail.Text);
                com.Parameters.AddWithValue("DriverMobile", txtAddDriverMobile.Text);
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
            txtAddDriverEmail.Text = string.Empty;
            txtAddDriverMobile.Text = string.Empty;
            txtAddDriverName.Text = string.Empty;
            txtAddDriverAddress.Text = string.Empty;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //GridView1.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"UPDATE [Driver_ST10069206] 
                SET [DriverAddress]='" + txtUpdateDriverAddress.Text + "'," +
                "[DriverEmail]='" + txtUpdateDriverEmail.Text + "'," +
                " [DriverMobile]='" + txtUpdateDriverMobile.Text + "' " +
                "WHERE [DriverName]='" + txtUpdateDriverName.Text + "'", con);
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

        protected void btnView_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Driver_ST10069206", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }
        }

        protected void btnClear2_Click(object sender, EventArgs e)
        {
            txtUpdateDriverName.Text = string.Empty;
            txtUpdateDriverAddress.Text = string.Empty;
            txtUpdateDriverEmail.Text = string.Empty;
            txtUpdateDriverMobile.Text = string.Empty;
        }

        protected void btnHide_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"DELETE from Driver_ST10069206
                                    WHERE [DriverName]='" + txtDeleteDriverName.Text + "'", con);
                int connect = cmd.ExecuteNonQuery();
                if (connect == 1)
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

        protected void btnClear3_Click(object sender, EventArgs e)
        {
            txtDeleteDriverName.Text=string.Empty;
        }
    }
}