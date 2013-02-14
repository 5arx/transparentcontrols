using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ThinkatronicUtils;
namespace transparent
{
    /// <summary>
    /// Summary description for SourceViewer
    /// </summary>
    public class SourceViewer : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
         

            if (context.Request.QueryString["loc"] != null)
            {
                string filecontents, qs;
                qs = filecontents = string.Empty;
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                try
                {
                    qs = context.Request.QueryString["loc"];

                    if (qs.EndsWith("web.config"))
                    {
                        throw new ApplicationException("Attempt to access restricted file.");
                    }
                    foreach(string ln in System.IO.File.ReadAllLines(context.Server.MapPath(qs))){
                        sb.Append(string.Format("<br/>{0}", context.Server.HtmlEncode(ln)));
                    }
                }
                catch (Exception ex)
                {
                    qs = "An error occurred: <br/>&nbsp;" + ex.Message;
                }
                context.Response.Write(sb.ToString());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}