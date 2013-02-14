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

namespace transparent.controls.viewstate
{
    public partial class Default : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
                buildGui();
            }
        }

        private void buildGui() {
            lViewState.Text = "<h3>Current ViewState Variables</h3>";
            foreach (string key in ViewState.Keys)
            {
                lViewState.Text += ("<br/>" + key + " = " + ViewState[key].ToString());
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                addToViewState();
                buildGui();
            }
        }
        private void addToViewState()
        {
            ViewState.Add(tbViewstateKey.Text.Trim(), tbViewstateValue.Text.Trim());
            //ViewState[tbViewstateKey.Text.Trim()] = tbViewstateValue.Text.Trim();
        }
    }
}