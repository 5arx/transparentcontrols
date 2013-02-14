using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.pages.lifecycle
{
    public partial class PageControlTree : transparent.include.classes.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayControls(Page.Controls, 1);
        }

        private void ShowTopLevelControls()
        {
            foreach (Control c in Page.Controls)
            {
                lOut.Text+=(string.Format("<br/>Control: {0} - {1}<hr />", c.GetType().ToString(), c.ID));

                if (c is LiteralControl)
                {
                    lOut.Text+=(string.Format("*** Text: {0}<br/>", Server.HtmlEncode(((LiteralControl)c).Text)));
                }
            }
        }

        private void DisplayControls(ControlCollection coll, int depth)
        {
            foreach (Control c in coll)
            {
                lOut.Text+=(new string('-', depth));

                lOut.Text+=(string.Format("<br/>Control: {0} - {1}<hr width='150' />", c.GetType().ToString(), c.ID));

                if (c is LiteralControl)
                {
                    lOut.Text+=(string.Format("*** Text: {0}<br/>", Server.HtmlEncode(((LiteralControl)c).Text)));
                }
                if (c.Controls != null)
                {
                    DisplayControls(c.Controls, depth + 1);
                }
            }
        }
    }
}
