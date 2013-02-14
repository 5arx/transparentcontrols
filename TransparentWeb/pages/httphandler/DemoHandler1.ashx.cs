using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace transparent.pages.httphandler
{
    /// <summary>
    /// Summary description for DemoHandler1
    /// </summary>
    public class DemoHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpResponse resp = context.Response;
            resp.ContentType = "text/html";
            resp.Write("<html><head><link rel='stylesheet' type='text/css' href='/include/css/default.css' /></head><body>");
            resp.Write("<h2>Request Params:</h2> <ul>");
            foreach (string key in context.Request.Params)
            {
                resp.Write(string.Format("<li style='font-size:10px;font-weight:normal;'>{0}: {1}</li>", key, context.Request.Params[key]));
            }
            resp.Write(string.Format("</ul><hr/><p>{0}.{1} running on {2}</body>", this.GetType().Namespace, this.GetType().Name, DateTime.Now.ToString("dddd MMMM yyyy 'at' hh:mm:ss tt")));
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