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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["therideyourent"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand com = new SqlCommand(@"select count(1) from Inspector_ST10069206 where [InspectorName] =@FirstName 
                                                AND [InspectorNo]=@InspectorNum",con);
                com.Parameters.AddWithValue("FirstName", txtInspectorName.Text);
                com.Parameters.AddWithValue("InspectorNum", txtInspectorNumber.Text);
                con.Open();
                int correctly = (int)com.ExecuteScalar();
                con.Close();
                if (correctly == 1)
                {
                    Session["first_name"] = txtInspectorName.Text;
                    Session["InspectorNum"] = txtInspectorNumber.Text;
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Try again');", true);
                }
            }
        }
    }
}