using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.pages.lifecycle
{
    public partial class PageLifeCycle : transparent.include.classes.BasePage
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
         //   debug("Page_PreInit");
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            debug("Page_Init");
        }


        protected void Page_PreLoad(object sender, EventArgs e)
        {
            debug("Page_PreLoad");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            debug("Page_Load");
            if (Page.IsPostBack)
            {
                debug(" -- This is a postback");
            }
            else
            {
                debug(" -- Not a postback");
            }


        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            debug("Page_PreRender");
        }

        protected void Page_Render(object sender, EventArgs e)
        {
            debug("Page_Render");
        }
        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            debug("Page_PreRenderComplete");
        }
        protected void Page_SaveStateComplete(object sender, EventArgs e)
        {
            debug("Page_SaveStateComplete");
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            debug("page_unload");
        }

        private void debug(string x)
        {
            this.lOut.Text += string.Format("<br />Page Lifecycle Event: {0} <br/>", x);
        }

    }
}
