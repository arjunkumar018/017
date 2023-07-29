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
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgbtn_Click(object sender, EventArgs e)
        {
            Parth.Open();
            string query = $"Select * from Users where uemail='{USERID.Value}'";
            SqlCommand cmd = new SqlCommand(query, Parth);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (USERID.Value == dr["uemail"].ToString())
            {

                if (Pass.Value == dr["upass"].ToString())
                {
                    Session["uid"] = dr["uid"].ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid username')</script>");
            }
        }
    }
}