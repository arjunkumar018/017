using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Revision
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {       
            string query = $"insert into  Users (uname,uemail,uphone,upass,ustatus)  values('{Name.Text}','{email.Text}','{phone.Text}','{password.Text}','Active')";
            Arjun.Open();
            SqlCommand scm = new SqlCommand(query, Arjun);
            int i = scm.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' registration Successfully')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid')", true);
            }

        }
    }
}