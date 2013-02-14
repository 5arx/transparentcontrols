using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.caching
{
    public partial class CachedTime : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.litTime.Text = DateTime.Now.ToLongTimeString();
        }
    }
}