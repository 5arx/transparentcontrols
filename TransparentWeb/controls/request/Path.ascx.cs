using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.request
{
    public partial class Path : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //= Request.Path
            Dictionary<string,string> lstPathParams = new Dictionary<string,string>();
            
            for(int i=0; i< Request.AcceptTypes.Length; i++){
                lstPathParams.Add("Accept-Type " + (i + 1).ToString(), Request.AcceptTypes[i]);
            }
            try
            {
            lstPathParams.Add("Browser", string.Format(" {0} {1} {2} {3}", Request.Browser.Browser, Request.Browser.MajorVersion, Request.Browser.MinorVersion, Request.Browser.MinorVersionString));

            lstPathParams.Add("Path", Request.Path);
            lstPathParams.Add("ApplicationPath", Request.ApplicationPath);
            lstPathParams.Add("AppRelativeCurrentExecutionFilePath", Request.AppRelativeCurrentExecutionFilePath);
            lstPathParams.Add("CurrentExecutionFilePath", Request.CurrentExecutionFilePath);
            lstPathParams.Add("FilePath", Request.FilePath);
            lstPathParams.Add("PathInfo", Request.PathInfo);
            lstPathParams.Add("PhysicalApplicationPath", Request.PhysicalApplicationPath);
            lstPathParams.Add("PhysicalPath", Request.PhysicalPath);
            lstPathParams.Add("Url.PathAndQuery", Request.Url.PathAndQuery);
            lstPathParams.Add("UrlReferrer.PathAndQuery", Request.UrlReferrer.PathAndQuery);
            lstPathParams.Add("UserHostAddress", Request.UserHostAddress);
            lstPathParams.Add("UserHostName", Request.UserHostName);
            }catch(Exception ex){
                ((Label)this.Parent.Parent.FindControl("lOut")).Text += "<br/>Error: " + ex.Message;
            }

            this.rptRequestPath.DataBind();
        }
    }
}