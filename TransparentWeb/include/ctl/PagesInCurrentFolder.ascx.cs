using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace transparent.include.ctl
{
    public partial class PagesInCurrentFolder : System.Web.UI.UserControl
    {
        private string vsCurrentDir
        {
            get
            {
                //if (ViewState["vsCurrentDir"] == null)
                //{
                //    ViewState["vsCurrentDir"] = @"/pages/";
                //}
                return ViewState["vsCurrentDir"].ToString();
            }
            set
            {
                ViewState["vsCurrentDir"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string sDir = System.IO.Path.GetDirectoryName(this.Page.Request.Path);
            vsCurrentDir = sDir;

            DirectoryInfo dir = new DirectoryInfo(Server.MapPath(sDir));

            rptFiles.DataSource = dir.GetFiles("*.aspx").OrderBy(f => f.Name);
            rptFiles.DataBind();
            
        }

        protected void rptFiles_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header) { }

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                using (HtmlAnchor hl = ((HtmlAnchor)e.Item.FindControl("hlPage")))
                {
                    if (Server.MapPath(@vsCurrentDir).Equals(Server.MapPath(@"/")))
                    {
                        hl.HRef = @"/pages/" + hl.InnerText;
                    }
                    else
                    {
                        hl.HRef += (@vsCurrentDir.Replace('\\', '/') + System.IO.Path.DirectorySeparatorChar + hl.InnerText).Replace("\\", @"\").Replace("\\", "/");
                    }
                    if (hl.InnerText.Equals("Default.aspx"))
                    {
                        hl.InnerText = "Home";
                    }
                    //remove the extension
                    hl.InnerText = hl.InnerText.Replace(".aspx", "");
                }
            }
        }

    }
}