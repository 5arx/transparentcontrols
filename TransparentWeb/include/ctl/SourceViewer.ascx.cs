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
using transparent.include.classes;
namespace transparent.include.ctl
{
    public partial class SourceViewer : transparent.include.classes.BaseControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string markup, cs, designer;
            markup = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrcMarkup;
            cs = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrc;
            designer = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrcDesigner;
            #region TODO_1
            ////TODO: Make this generic so it will display the source of a BasePage
            /*
            if (WebUtils.FirstContainer(this) == WebUtils.ControlType.BaseControl)
            {
                markup = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrcMarkup;
                cs = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrc;
                designer = ((transparent.include.classes.BaseControl)(System.Web.UI.Control)this.Parent).ControlSrcDesigner;
            }
            else if (WebUtils.FirstContainer(this) == WebUtils.ControlType.BasePage)
            {
                markup = ((transparent.include.classes.BasePage)(System.Web.UI.Page)this.Parent).ControlSrcMarkup;
                cs = ((transparent.include.classes.BasePage)(System.Web.UI.Page)this.Parent).ControlSrc;
                designer = ((transparent.include.classes.BasePage)(System.Web.UI.Page)this.Parent).ControlSrcDesigner;
            }
            else //Assume its System.Web.UI.Page
            {
                markup = Request.Path;//AppRelativeVirtualPath;
                cs = markup + ".cs";
                designer = markup + ".designer.cs";
                //markup = cs = designer = string.Empty;
            }
            */
            #endregion
            //set the hyperlink actions
            this.a_SrcCS.HRef = AppConfig("fileReaderUrl") + cs;
            
            //this.a_SrcDesigner.HRef = AppConfig("fileReaderUrl") + designer;
            this.a_SrcMarkup.HRef = AppConfig("fileReaderUrl") + markup;

            //classnames for JQuery 
            ////TODO: Update to .Net v4 - use new clientid mode
            this.a_SrcDesigner.HRef = AppConfig("fileReaderUrl") + designer;
            //this.a_SrcDesigner.Attributes.Add("onclick", string.Format(@"showSource(""{0}"");", AppConfig("fileReaderUrl") + designer.Replace("~", "")));
        }
    }
}