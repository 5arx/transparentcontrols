using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.pages.PrinceDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strXml = string.Format("<html><body><h1>Prince Demo Output</h1><h2>This document was generated: {0}</h2><p>This <em>should be output in Adobe&trade;&rsquo;s proprietary Portable Document Format&trade; (PDF) format.</em></p></body></html>",DateTime.Now.ToString());
            Byte[] arrBytes = UTF8Encoding.Default.GetBytes(strXml);
            System.IO.MemoryStream s = new System.IO.MemoryStream(arrBytes);
           
            Prince princeConverter = new Prince("c:\\Program Files (x86)\\Prince\\Prince.exe");
            princeConverter.SetLog(Server.MapPath("/") + "princeLog.log");
            Response.Clear();
            Response.Filter = new PrinceFilter(princeConverter, Response.Filter);
            Response.AddHeader("Content-Type", "application/pdf");
            princeConverter.ConvertMemoryStream(s, Response.OutputStream);
            
            //princeConverter.ConvertString(strXml, Response.OutputStream);
            Response.Flush() ;
            
        }
    }
}