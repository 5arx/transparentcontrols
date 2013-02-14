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
using System.IO;
using System.Net;

namespace transparent.controls.networking
{
    public partial class GetWebpage : transparent.include.classes.BaseControl 
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e) {
            if (Page.IsValid) {
                scrape(getUrl());
            }
        }

        private string getUrl(){
           string ret = this.txtUrl.Text.Trim();
           if (! ret.StartsWith("http://")){
               ret = "http://"+ret;
           }
           return ret;
        }
        private void scrape(string pUrl) {
            WebRequest req = WebRequest.Create(pUrl);

            WebResponse resp = req.GetResponse();

            Stream htmlStream = resp.GetResponseStream();
            StreamReader strReader = new StreamReader(htmlStream, System.Text.Encoding.ASCII);
            if (!this.chViewSource.Checked)
            {
                this.lblHTML.Text = Server.HtmlEncode((strReader.ReadToEnd())).Replace("<", "<br/><");
            }
            else {
                this.lblHTML.Text = strReader.ReadToEnd();
            }
        }
    }

}