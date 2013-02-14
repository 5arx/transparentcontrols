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

using transparentLib;


namespace transparent.include.ctl {
   public partial class LoginBox : transparent.include.classes.BaseControl {
      //TODO: dotNetLib.site.Login login;
      protected void Page_Load(object sender, EventArgs e) {

      }

      protected void btnLogin_Click(object sender, EventArgs e){
         if (Page.IsValid){
            transparentLib.User u = new transparentLib.User(txtEmail.Text, txtPswd.Text);
            u.SignIn();

            if (u.Authenticated){
               setAuthCookie(u);
               Response.Redirect(Request.Path);
            }
            else{
               this.phLoginFail.Visible = true;
            }
         }
      }

      private void setAuthCookie(transparentLib.User u){
         HttpCookie authcookie = new HttpCookie(AppConfig("authCookieName"));
         authcookie.Values["Fname"] = u.Fname;
         authcookie.Values["Sname"] = u.Sname;

         Response.Cookies.Add(authcookie);
         Session["UID"]   = u.ID;
      }

       protected override void OnPreRender(EventArgs e)
       {
           this.DivLoginBox.Visible = !UserLoggedIn;//hide the login box if logged in.
           this.DivLoggedIn.Visible = !DivLoginBox.Visible;

           if (UserLoggedIn)
           {
               this.lUname.Text = this.UserID.ToString();
           }
       }
   }
}