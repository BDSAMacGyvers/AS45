using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using SchedulingBenchmarking;
using System.Web.SessionState;


namespace FrontEnd
{
    public partial class GuiForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameTextBox.Text = (string) Session["UserName"];
            change();
        }

        protected void nameTextBox_TextChanged(object sender, EventArgs e)
        {
            change();
        }

        protected void fromDate_SelectionChanged(object sender, EventArgs e)
        {
            change();
        }

        protected void toDate_SelectionChanged(object sender, EventArgs e)
        {
            change();
        }

        protected void change()
        {
            string filter = "";
            
            if (!Session["UserName"].Equals("admin")) filter += "user = '" + Session["UserName"]+"' and ";
            
            LoggerDB.FilterExpression = String.Format(filter+"timestamp >= '{0}' and timestamp <= '{1}'", fromDate.SelectedDate, toDate.SelectedDate);
        }

       
    }
}