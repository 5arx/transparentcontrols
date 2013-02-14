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

namespace transparent.controls.usercontrols
{
    public partial class UserControl : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //has access to enclosing page
            ((Label)(this.Page.Master.FindControl("lOut"))).Text= 
                    string.Format("* {0} writing to Page.Master!",this.GetType().ToString()  );
        }
    }
}