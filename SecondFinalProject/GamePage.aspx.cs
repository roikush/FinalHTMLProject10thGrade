using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBAttempt
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["saver"] != null)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OEDK1M8\\SQLEXPRESS;Initial Catalog=Roei;Integrated Security=True");
                con.Open();
                string query = "UPDATE users SET balance=@balance, prestiges=@prestiges WHERE Username=@username AND Passwords=@password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", Request.Form["namer"]);
                cmd.Parameters.AddWithValue("@password", Request.Form["passer"]);
                cmd.Parameters.AddWithValue("@balance", Request.Form["balance"]);
                cmd.Parameters.AddWithValue("@prestiges", Request.Form["107"]);

                cmd.ExecuteScalar();
                con.Close();


            }
            if (Request.Form["finalPrestige"] != null)
            {
                SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-OEDK1M8\\SQLEXPRESS;Initial Catalog=Roei;Integrated Security=True");
                con2.Open();
                string query2 = "UPDATE users SET balance=@balance, prestiges=@prestiges WHERE Username=@username AND Passwords=@password";

                SqlCommand cmd2 = new SqlCommand(query2, con2);
                cmd2.Parameters.AddWithValue("@username", Request.Form["namer"]);
                cmd2.Parameters.AddWithValue("@password", Request.Form["passer"]);
                cmd2.Parameters.AddWithValue("@balance", 1);
                cmd2.Parameters.AddWithValue("@prestiges", Request.Form["107"]);
                cmd2.ExecuteScalar();
                con2.Close();
                String str = "<input type='text' value = '" + Request.Form["107"]+"' id='108' name='108' style='position:absolute;top:-50px;left:0px;' hidden";
                //  Response.Write(str);
                myLabel.Text = str;     

            }
        }
    }
}