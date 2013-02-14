using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.googlemaps
{
    public partial class GoogleDemo2 : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                buildGui();
            }
        }

        private void buildGui()
        {
            this.ddlCities.Items.Add(new ListItem("Birmingham", "52.499922,-1.931877"));
            this.ddlCities.Items.Add(new ListItem("Dublin", "53.360797,-6.254654"));
            this.ddlCities.Items.Add(new ListItem("Edinburgh", "55.981482,-3.172989"));
            this.ddlCities.Items.Add(new ListItem("London", "51.50308,-0.092182"));
            this.ddlCities.Items.Add(new ListItem("Paris", "48.856667,2.350987"));
            this.ddlCities.Items.Add(new ListItem("Rome", "41.977869,12.498322"));

            this.ddlCities.Items.Add(new ListItem("San Francisco", ""));
            this.ddlCities.Items.Add(new ListItem("Trieste", "41.977869,12.498322"));
            this.ddlCities.Items.Add(new ListItem("York", "41.977869,12.498322"));
            this.ddlCities.Items.Add(new ListItem("Rome", "41.977869,12.498322"));
        }
    }
}