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
    public partial class Edit : System.Web.UI.Page
    {
        SqlConnection Parth=new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void cource_id_Click(object sender, EventArgs e)
        {
            DbWork db1 = new DbWork();
            db1.reader = db1.EditProduct(Id.Text);
            db1.reader.Read();
            Name.Text = db1.reader["cname"].ToString();

            Description.Text = db1.reader["codisc"].ToString();
            Duration.Text = db1.reader["codura"].ToString();
            Price.Text = db1.reader["coprice"].ToString();
            //   Img.FileName= db1.reader["Image"].ToString();
            Slug.Text = db1.reader["slug"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string querry = $"UPDATE AddCource SET cname='{Name.Text}', codisc='{Description.Text}', codura='{ Duration.Text}',coprice='{Price.Text}',slug='{Slug.Text}' WHERE id={Id.Text}";
            Parth.Open();
            SqlCommand scm = new SqlCommand(querry, Parth);
            int i = scm.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' updation Successfully')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid')", true);
            }

        }
    }
}