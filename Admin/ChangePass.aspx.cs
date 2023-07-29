using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Revision.Admin
{
    public partial class ChangePass : System.Web.UI.Page
    {
        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void changebtn_Click(object sender, EventArgs e)
        {

            SqlDataAdapter sda = new SqlDataAdapter($"Select password from Login where password='{OldPass.Text}'", Parth);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count.ToString()=="1")
            {
                if(NewPass.Text== ConfPass.Text)
                {
                    Parth.Open();
                    SqlCommand cmd = new SqlCommand($"Update Login set password='{ConfPass.Text}' where password='{OldPass.Text}'", Parth);
                    cmd.ExecuteNonQuery();
                    Parth.Close();
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}