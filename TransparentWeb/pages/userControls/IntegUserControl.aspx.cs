using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using transparent.controls.usercontrols;//Need this to access the Enum.

namespace transparent.pages.userControls
{
    public partial class IntegUserControl : System.Web.UI.Page
    {
        //NB. The IntegControl's property is modified in Page_Load and NOT in the RadioButtonList event handler.
        //The control has not been rendered in Page_Load but by the time any RBL event handler runs the 
        //HTML has already been generated so the the property change would occur but too late to affect
        //the output to the browser.
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rbFooterFormat.SelectedValue == "short")
            {
                this.IntegUserControl1.Format = FooterFormat.ShortTime;
            }
            else if (rbFooterFormat.SelectedValue == "long")
            {
                this.IntegUserControl1.Format = FooterFormat.LongDate;
            }
            else if (rbFooterFormat.SelectedValue == "ticks")
            {
                this.IntegUserControl1.Format = FooterFormat.Ticks;
            }
            else if (rbFooterFormat.SelectedValue == "utc") {
                this.IntegUserControl1.Format = FooterFormat.UniversalTime;
            }
        }
    }
}
