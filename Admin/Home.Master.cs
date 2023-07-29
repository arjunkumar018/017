using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revision.Admin
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Lgbtn1.Visible = true;
                edbtn.Visible = false;
                dtbln.Visible = false;
                AddChocklate.Visible = false;
                AllChocklate.Visible = false;
            }
            else
            {
                Lgbtn1.Visible = false;
                edbtn.Visible = true;
                dtbln.Visible = true;
                AddChocklate.Visible = true;
                AllChocklate.Visible = true;
            }

        }
    }
}