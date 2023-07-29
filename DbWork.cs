using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Revision
{
    public class DbWork
    {

        SqlConnection Parth = new SqlConnection(ConfigurationManager.ConnectionStrings["Arjun"].ConnectionString);
        public SqlDataReader reader;

        public SqlDataReader getAllProduct()
        {
            Parth.Open();

            return new SqlCommand("SELECT * FROM AddCource", Parth).ExecuteReader();
        }

        public SqlDataReader EditProduct(string id)
        {
            Parth.Open();
            string querry = "Select * from AddCource where id=" + id;
            SqlCommand scm = new SqlCommand(querry, Parth);

            return scm.ExecuteReader();
        }

        private static string AddRandomNumbers(string text)
        {
            Random random = new Random();
            int randomNumber = random.Next(10, 99);
            text += "_" + randomNumber.ToString();
            return text;
        }
        public static string genslug(string text)
        {
            text = text.Trim();
            text = text.Replace("-", "_");
            text = AddRandomNumbers(text);
            return text;
        }

    }
}