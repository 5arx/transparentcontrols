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

namespace transparent.pages.lifecycle
{
    public partial class Default: transparent.include.classes.BasePage
    {
        private int _counter=0;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.lOut.Text+= getSuffix() + "Page_Load running...";
        }
        private string getSuffix(){
         return "<br/>" + this._counter++ + ". " ;
        }
        protected void Page_Init(object sender, EventArgs e){
            this.lOut.Text+= getSuffix() + "Page_Init running...<br/>";
        }   
        
        //PreInit - Controls etc. have not yet been instantiated
        protected void Page_PreInit(object sender, EventArgs e){
            //this.lOut.Text+= "Page_PreInit running...<br/>";//won't work
            ((Label)this.Master.FindControl("lOut")).Text += getSuffix() + "Page_PreInit running";
        }                
        
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.lOut.Text+= getSuffix() + "Page_PreRender running...<br/>";
        }

        protected void Page_OnRender(object sender, EventArgs e)
        {
            this.lOut.Text+= "Page_Render running...<br/>";
        }        
        
        protected void Page_OnUnload(object sender, EventArgs e)
        {
            this.lOut.Text+= "Page_UnLoad running...<br/>";
        }                
    }
}
