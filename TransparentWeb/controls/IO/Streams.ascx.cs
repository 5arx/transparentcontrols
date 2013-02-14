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
using ThinkatronicUtils;

namespace transparent.controls.IO {
   public partial class Streams : transparent.include.classes.BaseControl {
      string qs;

      protected void Page_Load(object sender, EventArgs e) {
         if (! Page.IsPostBack){
            try{
               if (Request.QueryString["loc"]!=null)
               {
                  qs = Request.QueryString["loc"];
                  if (qs.EndsWith("web.config") ){
                     throw new ApplicationException("Attempt to access restricted file.");
                  }                     
                  string filecontents = FileUtils.FileToText(Server.MapPath(qs));                  
                  this.lbPath.Text = qs;
                  this.lOut.Text+= 
                     Server.HtmlEncode(filecontents).Replace(System.Environment.NewLine, "<br/>").Replace(" ", "&nbsp;");
               }
               else{
                  this.lOut.Text = "Error: No file path supplied.";
               }
            }catch(Exception ex){
               this.lOut.Text = "An error occurred: <br/>&nbsp;" + ex.Message;
            }         
         }
      }
   }
}