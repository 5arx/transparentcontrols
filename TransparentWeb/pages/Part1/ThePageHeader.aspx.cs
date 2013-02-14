using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProASP3_5.Part1
{
    public partial class ThePageHeader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title+= string.Format(" :: Dynamic header demo using Page.Header - this page served at approx {0}",DateTime.Now.ToString());

            HtmlMeta metadesc = new HtmlMeta();
            metadesc.Name = "description";
            metadesc.Content = string.Format("This content added dynamically at {0}.",DateTime.Now.ToString());
            Page.Header.Controls.Add(metadesc);
        }
    }
}
