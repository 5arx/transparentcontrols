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

namespace transparent.include.ctl
{
   public partial class stdLHM : transparent.include.classes.BaseControl
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         this.ph_Logout.Visible = UserLoggedIn;
      }
   }
}