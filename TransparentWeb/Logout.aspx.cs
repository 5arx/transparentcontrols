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

namespace transparent {
   public partial class Logout : transparent.include.classes.BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         Session.Abandon();
         HttpCookie delcook = new HttpCookie("transparent_Auth");
         
         delcook.Expires = DateTime.Now.AddDays(-1);
         Response.Cookies.Add(delcook);
         
         Response.Redirect("~/");
      }
   }
}