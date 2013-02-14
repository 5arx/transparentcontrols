using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using transparent.include.classes;

namespace transparent.controls.caching
{
    public partial class Time : BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litTime.Text = DateTime.Now.ToLongTimeString();
        }
    }
}