using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Revision.Admin
{
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string PId = Request.QueryString["id"];
            if (PId == null)
            {
                Response.Redirect("AllChocklate.aspx");
            }
            string query = $"DELETE FROM AddCource WHERE id='{PId}'";
            Parth.Open();
            new SqlCommand(query, Parth).ExecuteNonQuery();

            Response.Redirect("AllCource.aspx");

        }
    }
}