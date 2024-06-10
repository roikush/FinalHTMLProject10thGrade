using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;

namespace DBAttempt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OEDK1M8\\SQLEXPRESS;Initial Catalog=Roei;Integrated Security=True");
                con.Open();
                string query = "SELECT COUNT(*) FROM users WHERE Username=@username AND Passwords=@password";
                string balanceQuery = "SELECT balance FROM users WHERE Username=@username AND Passwords=@password";
                string prestigeQuery = "SELECT prestiges FROM users WHERE Username=@username AND Passwords=@password";

                SqlCommand cmd = new SqlCommand(query, con);
                
                SqlCommand cmdBalance = new SqlCommand(balanceQuery, con);

                SqlCommand cmdPrestige = new SqlCommand(prestigeQuery, con);

                cmdBalance.Parameters.AddWithValue("@username", Request.Form["username"]);
                cmdBalance.Parameters.AddWithValue("@password", Request.Form["password"]);
                cmd.Parameters.AddWithValue("@username", Request.Form["username"]);
                cmd.Parameters.AddWithValue("@password", Request.Form["password"]);
                cmdPrestige.Parameters.AddWithValue("@username", Request.Form["username"]);
                cmdPrestige.Parameters.AddWithValue("@password", Request.Form["password"]);

                string respond = cmdBalance.ExecuteScalar().ToString();
                int presRespond = (int)cmdPrestige.ExecuteScalar();
                Response.Write("<input type='text' name='serverBalance' id='serverBalance' style='visibility:hidden; position:absolute;' value='"+respond+"'>");
                Response.Write("<input type='text' name='serverPres' id='serverPres' value='" + presRespond + "' style='visibility:hidden;position:absolute;' ");
                cmd.ExecuteScalar();
                int count = (int)cmd.ExecuteScalar();

                con.Close();
                if (count > 0)
                {
                    myLabel.Text = "Login Success";
                }
                else
                {
                    myLabel.Text = "Login Failed";
                 }
          
            }


        }
    }
}