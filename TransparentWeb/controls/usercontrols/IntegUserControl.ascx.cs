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

namespace transparent.controls.usercontrols
{
    public partial class IntegUserControl : transparent.include.classes.BaseControl
    {
        private FooterFormat _format = FooterFormat.LongDate;

        /* This public property can be accessed by the parent Page 
           and used to set the format.                                 */
        public FooterFormat Format {
            get { return this._format; }
            set { this._format = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                this.lClassName.Text = this.GetType().ToString().Replace("_", ".");
            }

            this.lOut.InnerText = "Footer created at ";
            if (_format == FooterFormat.LongDate)
            {
                lOut.InnerText += DateTime.Now.ToLongDateString();
            }
            else if(_format == FooterFormat.ShortTime){
                lOut.InnerText += DateTime.Now.ToShortTimeString();
            }
            else if (_format == FooterFormat.Ticks)
            {
                lOut.InnerText += DateTime.Now.Ticks;
            }
            else if (_format == FooterFormat.UniversalTime)
            {
                lOut.InnerText += DateTime.Now.ToUniversalTime();
            }

        }
    }
    public enum FooterFormat
    {
        LongDate,
        ShortTime,
        Ticks,
        UniversalTime
    }    
}