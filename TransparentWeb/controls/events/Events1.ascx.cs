using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.events
{
    //this is the delegate that is invoked when the event is raised.
    public delegate void TemperatureChangedEventHandler(object sender, TemperatureChangedEventArgs e);

    public partial class EventsDemo1 : transparent.include.classes.BaseControl
    {
        public int Temperature { 
            get{
                if (ViewState["Temp"] == null) {
                    ViewState["Temp"] = 20;
                }
                return Int32.Parse(ViewState["Temp"].ToString());
            }
            set{
                ViewState["Temp"] = value;
            }
        }

        //The event class. NB it is of the same type as the delegate TemperatureChangedEventHandler
        public event TemperatureChangedEventHandler TemperatureChanged;

        // OnTemperatureChanged dispatches the event to delegates that
        // are registered with the TemperatureChanged event.
        // Controls that derive from EventsDemo1 can handle the
        // TemperatureChanged event by overriding OnTemperatureChanged
        // instead of attaching a delegate. The event data
        // is passed as an argument to this method.
        protected virtual void OnTemperatureChanged(TemperatureChangedEventArgs e)
        {
            if (TemperatureChanged != null)
            {
                TemperatureChanged(this, e);
            }
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            this.Temperature--;
            NotifyTempChange();
        }
        //This helper method (optional, for brevity) calls the method with raises
        //the event itself.
        private void NotifyTempChange() 
        {
            OnTemperatureChanged(new TemperatureChangedEventArgs(this.Temperature));
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            this.Temperature++;
            NotifyTempChange();
        }
    }
}