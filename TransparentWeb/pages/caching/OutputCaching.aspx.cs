﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.pages.caching
{
    public partial class OutputCaching : transparent.include.classes.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.litTime.Text = DateTime.Now.ToLongTimeString();
        }
    }
}