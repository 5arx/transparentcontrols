using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.include.classes {
   public class BaseControl: System.Web.UI.UserControl {
      public bool UserLoggedIn{
         get{
            bool ret = false;

            if(Request.Cookies[AppConfig("authCookieName")] != null && Session["UID"]!= null){
               ret = true;
            }
            return ret;
         }
      }
      
      public int UserID{
         get{
            if(UserLoggedIn)
            {
               return (int)Session["UID"];
            }
            else{
               return -1;
            }
         }
      }
      
      public String AppConfig(string pKey){
         string ret = String.Empty;
         
         if (ConfigurationManager.AppSettings[pKey]!= null && ConfigurationManager.AppSettings[pKey].Length>0){
            ret = ConfigurationManager.AppSettings[pKey];
         }
         
         return ret;
      }   

      public string ControlSrcMarkup{
         get{
            return this.AppRelativeVirtualPath;
         }
      }      
      
      public string ControlSrc{
         get{
            return this.ControlSrcMarkup + ".cs";
         }
      }            
      public string ControlSrcDesigner{
         get{
            return this.ControlSrcMarkup + ".designer" + ".cs";
         }
      }            
   }
}
