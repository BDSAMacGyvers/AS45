using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace FrontEnd
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
           
        }

        protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
        {
            Session["UserName"] = Login1.UserName;
          //  String username = Request.QueryString["userName"];
            Response.Redirect("GuiForm.aspx");
        }
    }
}