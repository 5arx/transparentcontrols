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
   public class BasePage : System.Web.UI.Page {
      protected Label lOut;   

      public String AppConfig(string pKey){
         string ret = String.Empty;

         if (ConfigurationManager.AppSettings[pKey]!= null 
            && ConfigurationManager.AppSettings[pKey].Length>0)
         {
            ret = ConfigurationManager.AppSettings[pKey];
         }

         return ret;
      }   

      public string PageSource{
         get{
            return Request.Path;
         }
      }
      public string PageCodebehindSource{
         get{
            return Request.Path + ".cs";
         }
      }      
      public string PageDesignerSource{
         get{
            return Request.Path + ".designer"+ ".cs";
         }
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
