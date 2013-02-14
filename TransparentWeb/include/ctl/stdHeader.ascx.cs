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
   public partial class stdHeader : transparent.include.classes.BaseControl
   {
      protected void Page_Load(object sender, EventArgs e){
      
      }
      
      protected override void OnPreRender(EventArgs e){
            //this.DivLoginBox.Visible = ! UserLoggedIn;//hide the login box if logged in.
            //this.DivLoggedIn.Visible = ! DivLoginBox.Visible;
            
            //if (UserLoggedIn){
            //   this.lUname.Text = this.UserID.ToString();
            //}
      }
   }
}