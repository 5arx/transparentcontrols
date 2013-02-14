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

namespace transparent.controls.cookies {
   public partial class CookieDemo : transparent.include.classes.BaseControl{
      protected void Page_Load(object sender, EventArgs e) {
         if (! Page.IsPostBack){
            populate();
         }
      }

      protected void btnAddCookie_Click(object sender, EventArgs e){
         HttpCookie ckie = new HttpCookie(this.txtName.Text, this.txtValue.Text);
         
         if (this.calchbx.Checked){
            ckie.Expires = cal.SelectedDate;
         }
         
         Response.Cookies.Add(ckie);
         Response.Redirect(Request.Path);
      }
      
      protected void btnDelCookie_Click(object sender, EventArgs e){  
         if (lbCookies.SelectedIndex >=0){
            if (lbCookies.SelectedItem.Value == AppConfig("authCookieName")){
               return;
            }
            HttpCookie ckie = new HttpCookie(lbCookies.SelectedItem.Value);
            ckie.Expires = DateTime.Now.AddDays(-100);
            
            Response.Cookies.Add(ckie);
            Response.Redirect(Request.Path);
         }
      }    
      
      private void populate(){
         HttpCookieCollection cooks = Request.Cookies;
         HttpCookie ckie;
         this.lbCookies.Items.Clear();
         
         for (int i=0; i< cooks.Count; i++){
            ckie = cooks[i];
            string warning = string.Empty;
            
            if (ckie.Name == AppConfig("authCookieName")){
               warning = "* Can't be deleted";
            }
            this.lbCookies.Items.Add
               (new ListItem(
                  string.Format("{0}:{1} {2}",ckie.Name, ckie.Value, warning), ckie.Name)
                  //ckie.Expires.ToString() - this can't be read (always returns db's date.minvalue)
               );
         }
         
         lbCookies.Visible = (this.lbCookies.Items.Count > 0);
         phnocookies.Visible = ! lbCookies.Visible;

      }

   }
}