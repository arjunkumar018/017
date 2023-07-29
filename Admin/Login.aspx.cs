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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void lgbtn_Click(object sender, EventArgs e)
        {
            Parth.Open();
            string checkEmail = $"SELECT * FROM Login WHERE email='{USERID.Value}'";
            SqlDataReader rd = new SqlCommand(checkEmail, Parth).ExecuteReader();
            if (rd.Read())
            {
                if (rd["password"].ToString() == PASS.Value)
                {
                    Session["uid"] = rd["id"].ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid email')</script>");
            }
          
        }
    }
}