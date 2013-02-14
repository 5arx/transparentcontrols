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

namespace transparent.controls.session {
   public partial class SessionDemo : transparent.include.classes.BaseControl{
      protected void Page_Load(object sender, EventArgs e) {
         if (! Page.IsPostBack){            
            populate();
         }
      }

      protected void btnAddSession_Click(object sender, EventArgs e){
         Session[this.txtName.Text] = txtValue.Text;
         
         Response.Redirect(Request.Path);
      }
      
      protected void btnDelSession_Click(object sender, EventArgs e){  
         if (lbSessions.SelectedIndex >=0){
            string keyname = lbSessions.SelectedItem.Value;
            if (keyname!= AppConfig("sessionSecurityKey")){
               Session.Remove(keyname);
               Response.Redirect(Request.Path);
            }
         }
      }    
      
      private void populate(){
         this.lbSessions.Items.Clear();

         string keyname;
         
         foreach(object obj in Session.Keys){
            keyname = obj.ToString();
            string warning = "";
            if (keyname== AppConfig("sessionSecurityKey")){
               warning = "* Can't be deleted.";
            }
           lbSessions.Items.Add(new ListItem(string.Format("{0} = {1}{2}",keyname,  Session[keyname].ToString(), warning),
                                              keyname
                                             )
                                 );
         }

         lbSessions.Visible = (lbSessions.Items.Count>0);
         btnDelSession.Visible = lbSessions.Visible;
      }
   }
}