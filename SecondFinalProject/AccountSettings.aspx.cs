using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DBAttempt
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  SqlConnection con = new SqlConnection("Data Source=DESKTOP-OEDK1M8\\SQLEXPRESS;Initial Catalog=Roei;Integrated Security=True");
            con.Open();
            string nameQuery = "SELECT COUNT(Id) FROM users WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(nameQuery, con);
            cmd.Parameters.AddWithValue("@Id", id);
            int id =(int)cmd.ExecuteScalar();
          */

        }
    }
}