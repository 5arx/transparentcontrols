using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using transparent.controls.events;

namespace transparent.pages.events
{

    public partial class Events1 : transparent.include.classes.BasePage
    {
        protected void Page_Init(object sender, EventArgs e) {
            this.EventsDemo1.TemperatureChanged += new TemperatureChangedEventHandler(EventsDemo1_TemperatureChanged);
        }

        void EventsDemo1_TemperatureChanged(object sender, TemperatureChangedEventArgs e)
        {
            string _msg = string.Format("Temperature is now {0}'C", e.CurrentTemperature);

            this.lOut.Text = _msg;
        }



        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}