using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.IO;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.controls.IO {
   public partial class FileUpload : transparent.include.classes.BaseControl{
      protected void Page_Load(object sender, EventArgs e) {

      }
      
      protected void btnPost_Click(object sender, EventArgs e){
         if (Page.IsValid){
            HttpPostedFile ufile = this.Uploader.PostedFile;
            
            demo("Name: " + Path.GetFileName( ufile.FileName));
            demo("Content-type: " + ufile.ContentType);
            demo("Length: " + ufile.ContentLength.ToString() + "bytes");
            string newname = rndFilename(ufile.FileName);
            ufile.SaveAs(Server.MapPath(ConfigurationManager.AppSettings["uploadDir"] + newname ));
            demo("Uploaded file saved as: " + newname);
            
            hlFile.NavigateUrl = ThinkatronicUtils.WebUtils.GetRootUri(Request) +  ConfigurationManager.AppSettings["uploadDir"] + newname;
            hlFile.Text = "View File";
            hlFile.ToolTip = newname;
            hlFile.Visible = true;
         }
      }


      private string rndFilename(string uFileName){     
         return Path.GetFileName(uFileName) + "_"  + System.Guid.NewGuid().ToString() + Path.GetExtension(uFileName);
      }      
      private void demo(string content){
         this.lOut.Text+= "<br/>>" + content;
      }
   
      protected void Uploader_Validate(object sender, ServerValidateEventArgs e){
         if (Uploader.PostedFile == null || Uploader.PostedFile.ContentLength < 1){
            e.IsValid = false;
         }
         else{
            e.IsValid = true;
         }
      }
   }
}