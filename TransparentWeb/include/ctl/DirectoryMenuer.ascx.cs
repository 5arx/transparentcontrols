using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace transparent.include.ctl
{
    public partial class DirectoryMenuer : transparent.include.classes.BaseControl
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
        private int _folderCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            string sDir = System.IO.Path.GetDirectoryName(this.Page.Request.Path);
            this.vsCurrentDir = sDir;

            DirectoryInfo dir = new DirectoryInfo(Server.MapPath(sDir));

            rptFiles.DataSource = dir.GetFiles("*.aspx").OrderBy(f => f.Name);
            rptFiles.DataBind();
            rptFiles.Visible = rptFiles.Items.Count > 0;
            rptFolders.DataSource = dir.GetDirectories().OrderBy(d=>d.Name);
            rptFolders.DataBind();
            rptFolders.Visible = _folderCount > 0;

            btnUp.Visible = ! (Server.MapPath(vsCurrentDir).Equals(Server.MapPath("/pages/"),StringComparison.CurrentCultureIgnoreCase));
        }

        protected void rptFolders_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header) { }
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                using (HyperLink hl = ((HyperLink)e.Item.FindControl("hlPage")))
                {
                    if (MatchHiddenFolders(hl.Text))
                    {
                        e.Item.Visible = false;
                    }
                    else
                    {
                        hl.NavigateUrl = @vsCurrentDir.Replace(@"\",@"/") + @"/" + hl.Text;
                        this._folderCount++;
                    }
                }
            }
        }

        private string[] getHiddenFolders()
        {
            ///TODO: Get the hidden folder types from web.config or something.
            return new string[] { @"\.svn", "App_Data", "Properties", "bin", "obj", "include" };
        }

        private bool MatchHiddenFolders(string sFoldername)
        {
            string[] arrHidden = getHiddenFolders();
            foreach (string p in arrHidden)
            {
                if (System.Text.RegularExpressions.Regex.Match(sFoldername, p).Success)
                {
                    return true;
                }
            }
            return false;
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

        protected void btnUp_Click(object source, ImageClickEventArgs e)
        {
            string path = Request.Path;
            string directry = Path.GetDirectoryName(path);

            string parentdir;

            parentdir = directry.Substring(0, directry.LastIndexOf(@"\"));

            if (parentdir.Length == 0)
            {
                parentdir = @"/pages/";
            }
            DirectoryInfo dir = new DirectoryInfo(directry);
            //parentdir = dir.Parent.FullName;
            //string parentdir = Directory.GetParent(directry).Name;
            Response.Redirect(parentdir);

            /**
                (Directory.GetParent(System.IO.Path.GetDirectoryName( Request.Path))).Name
            );
            **/
        }
    }
}