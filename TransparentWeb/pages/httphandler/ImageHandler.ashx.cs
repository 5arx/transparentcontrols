using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace transparent.pages.httphandler
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest req = context.Request;
            HttpResponse resp = context.Response;
            string strFilePath = @"c:\temp\image1.jpg";
            if (req.Params["picname"] == null)
            {
                resp.ContentType = "text/plain";
                resp.Write("Error: Parameter 'picname' was not passed.");
                resp.Flush();
            }
            else
            {
                context.Response.ContentType = "text/jpeg";
                //File.OpenRead(strFilePath);

                resp.WriteFile(strFilePath);
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