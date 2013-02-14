using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProASP3_5.Part1
{
    public partial class Events01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Ctrl_Changed(object sender, EventArgs e)
        {
            ListItem li = new ListItem(sender.GetType().ToString() + " - " + DateTime.Now.Ticks);
            li.Value = li.Text;

            lstEvents.Items.Insert(0,li);
        }

    }
}
