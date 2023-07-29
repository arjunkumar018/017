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
    public partial class AddChocklate : System.Web.UI.Page
    {
        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("~/Admin/img/arjun/" + FileUpload1.FileName));
            string coursename = Coname.Value;
            string coursedis = Codisc.Value;
            string coursedur = Codura.Value;
            string coursepri = Coprice.Value;
            string courseimg = FileUpload1.FileName;
            string slugCode = slugg.Value;

            string slug = DbWork.genslug(slugCode);


            string query = $"INSERT INTO AddCource VALUES('{coursename}','{coursedis}','{coursedur}','{coursepri}','{courseimg}','{slug}')";
            Parth.Open();
            new SqlCommand(query, Parth).ExecuteNonQuery();

        }
    }
}