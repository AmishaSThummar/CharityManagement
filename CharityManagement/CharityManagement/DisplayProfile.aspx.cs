using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CharityManagement
{
    public partial class DisplayProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DeleteProfile(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conStr = new SqlConnection();
            conStr.ConnectionString = ConfigurationManager.ConnectionStrings["db_connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conStr;
            cmd.CommandText = "DELETE FROM [users] WHERE [u_id] = '" + Session["id"] + "'";
            using (conStr)
            {
                conStr.Open();
                cmd.ExecuteNonQuery();
            }

            Session.RemoveAll();
            Response.Redirect("Login.aspx");
            
        }

        protected void btn_clickHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btn_clickLogout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}