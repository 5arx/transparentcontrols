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

namespace transparent.pages.cs
{
   public partial class Default : transparent.include.classes.BasePage
   {
      protected void Page_Load(object sender, EventArgs e){
         if (! Page.IsPostBack){
            
         }
      }

      #region Method Overloading
      private void debug(string x){
         this.lOut.Text+= "<br/>" + x + " ***";
      }

      private void Method1(){
         debug("Method1()");
      }

      private void Method1(string x){
         debug("Method1(string x)");
      }
      
      /** 
       * This won't compile - method overloading 
       * DOESN'T consider return types, only parameters.
       **/
      //private string Method1(string x){
      //   debug("Method1(string x)");
      //}
      #endregion
   }
}
