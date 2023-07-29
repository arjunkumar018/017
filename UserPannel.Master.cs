using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revision
{
    public partial class UserPannel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                Usbtn.Visible = true;
                Rgbtn.Visible = true;
                Bybtn.Visible = false;
                Prfbtn.Visible = false;
                Chobtn.Visible = false;
            }
            else
            {
                Usbtn.Visible = true;
                Rgbtn.Visible = true;
                Bybtn.Visible = true;
                Prfbtn.Visible = true;
                Chobtn.Visible = true;
            }
        }
    }
}