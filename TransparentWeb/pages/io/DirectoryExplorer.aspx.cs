using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.pages.io
{
    public partial class DirectoryExplorer : transparent.include.classes.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.spanSource.InnerHtml = this.PageSource + "<br/>" + this.PageCodebehindSource + "<br/>" + this.PageDesignerSource;

            //((HtmlAnchor)this.Master.FindControl("a_pgeMarkup")).HRef = this.PageSource;
            //((HtmlAnchor)this.Master.FindControl("a_pgeSource")).HRef = this.PageCodebehindSource;
            //((HtmlAnchor)this.Master.FindControl("a_pgeSourceDesigner")).HRef = this.PageDesignerSource;
        }
    }
}
