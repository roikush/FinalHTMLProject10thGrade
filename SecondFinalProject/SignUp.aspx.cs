using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBAttempt
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit1"] != null)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OEDK1M8\\SQLEXPRESS;Initial Catalog=Roei;Integrated Security=True");
                con.Open();
                string query = "INSERT INTO users(Username,Passwords) VALUES(@username, @password)";
                string startPresQuery = "UPDATE users SET prestiges=1 WHERE username=@username AND passwords=@password";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand startPresCmd = new SqlCommand(startPresQuery, con);
                cmd.Parameters.AddWithValue("@username", Request.Form["username"]);
                cmd.Parameters.AddWithValue("@password", Request.Form["password"]);
                startPresCmd.Parameters.AddWithValue("@username", Request.Form["username"]);
                startPresCmd.Parameters.AddWithValue("@password", Request.Form["password"]);
                cmd.ExecuteScalar();
                startPresCmd.ExecuteScalar();
              //  int count = (int)cmd.ExecuteScalar();
                con.Close();
                /*if (count > 0)
                {
                    Response.Write("New record created");
                }
                else
                {
                    Response.Write("Failed to create new record");
                }*/
            }
        }
    }
}