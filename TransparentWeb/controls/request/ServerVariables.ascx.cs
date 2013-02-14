using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.request
{
    public partial class ServerVariables : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (object x in Request.Params)
            {
                if (x is string)
                {
                    lOut.Text += string.Format("<p><strong>{0}</strong>    - {1}</p>", x, Request[x.ToString()].ToString());
                }
                else
                {
                    lOut.Text += "<br/>Non-string encountered.";
                }
            }

        }
    }
}