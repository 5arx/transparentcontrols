using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.response
{
    public partial class Response : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnServerImg_Click(object sender, EventArgs e)
        {
            Response.ContentType = "image/jpeg";
            Response.AppendHeader("Content-Disposition", "attachment; filename=thinkatron_logo.jpg");
            Response.TransmitFile(Server.MapPath(@"/include/img/thinkatron_logo.jpg"));
            Response.End();
        }
    }
}