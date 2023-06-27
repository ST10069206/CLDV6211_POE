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
    public partial class Inspectors : System.Web.UI.Page
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
                SqlCommand com = new SqlCommand(@"INSERT INTO Inspector_ST10069206(InspectorNo,InspectorName,
                                                InspectorEmail,InspectorMobile) 
                                                VALUES(@InspectorNo, @InspectorName,@InspectorEmail,
                                                @InspectorMobile)", con);
                com.Parameters.AddWithValue("InspectorNo", txtAddInspectorNo.Text.Trim());
                com.Parameters.AddWithValue("InspectorName", txtAddInspectorName.Text);
                com.Parameters.AddWithValue("InspectorEmail", txtAddInspectorEmail.Text);
                com.Parameters.AddWithValue("InspectorMobile", txtAddInspectorMobile.Text);
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
            txtAddInspectorEmail.Text = string.Empty;
            txtAddInspectorMobile.Text = string.Empty;
            txtAddInspectorName.Text = string.Empty;
            txtAddInspectorNo.Text = string.Empty;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //GridView1.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"UPDATE [Inspector_ST10069206] 
                SET [InspectorName]='" + txtUpdateInspectorName.Text + "'," +
                "[InspectorEmail]='" + txtUpdateInspectorEmail.Text + "'," +
                " [InspectorMobile]='" + txtUpdateInspectorMobile.Text + "' " +
                "WHERE [InspectorNo]='" + txtUpdateInspectorNo.Text + "'", con);
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
                SqlCommand cmd = new SqlCommand("select * from Inspector_ST10069206", con);
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
            txtUpdateInspectorNo.Text = string.Empty;
            txtUpdateInspectorName.Text = string.Empty;
            txtUpdateInspectorEmail.Text = string.Empty;
            txtUpdateInspectorMobile.Text = string.Empty;
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
                SqlCommand cmd = new SqlCommand(@"DELETE from Inspector_ST10069206
                                    WHERE [InspectorNo]='" + txtDeleteInspectorNo.Text + "'", con);
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
            txtDeleteInspectorNo.Text = string.Empty;
        }
    }
}