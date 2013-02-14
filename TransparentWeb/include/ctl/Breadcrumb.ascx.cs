using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace transparent.include.ctl
{
    public partial class Breadcrumb : System.Web.UI.UserControl
    {
        private int g_rowCount;
        private string _path = string.Empty;
        private string[] arrPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            _path = Request.Path;//.Replace(".aspx", "");//.Replace("pages","");
            arrPath = _path.Split(new char[]{'/'});

            arrPath = arrPath.Where(s => s.Length > 0).ToArray<string>();
            
            g_rowCount = 0;

            rptCrumbs.DataSource = arrPath;
            rptCrumbs.DataBind();
        }

        protected void rptCrumbs_ItemDatabound(object source, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem){
                //if (e.Item.DataItem.ToString().Trim().Length < 1){
                //    e.Item.Visible = false;
                //    return;
                //}
                HtmlAnchor crumbAnchor = ((HtmlAnchor)e.Item.FindControl("a_crumb"));
                if (g_rowCount == 0){
                    crumbAnchor.HRef = @"/" + e.Item.DataItem.ToString();
                }    
                else{
                    crumbAnchor.HRef = ((HtmlAnchor)rptCrumbs.Items[g_rowCount - 1].FindControl("a_crumb")).HRef + @"/" + e.Item.DataItem.ToString();
                }
                crumbAnchor.InnerText = crumbAnchor.InnerText.Replace("default.aspx", "Home").Replace(".aspx", "");// + @"/";

                /*
                if ( arrPath.Count() == 1 || g_rowCount == arrPath.Count()){
                    crumbAnchor.InnerText = crumbAnchor.InnerText.Substring(0, crumbAnchor.InnerText.LastIndexOf('/'));
                }
                */  
                

                g_rowCount++;
            }
        }
    }
}