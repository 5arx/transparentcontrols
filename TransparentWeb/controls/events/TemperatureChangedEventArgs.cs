using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace transparent.controls.events
{
    /// <summary>
    /// This class encapsulates information relating to
    /// a change in temperature.
    /// </summary>
    public class TemperatureChangedEventArgs : EventArgs
    {
        public int CurrentTemperature
        {
            get;
            set;
        }

        public TemperatureChangedEventArgs(int pCurrentTemp)
        {
            this.CurrentTemperature = pCurrentTemp;
        }
    }
}