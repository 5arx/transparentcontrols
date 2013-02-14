using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.servercontrols
{
    public partial class AddingDynamicControls : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddButton_Click(object sender, EventArgs e)
        {
            Button _btn = new Button();
            _btn.Text = this.txtControlText.Text.Trim();

            this.pnl1.Controls.Add(_btn);
        }

        protected void btnAddTxtBox_Click(object sender, EventArgs e)
        {
            TextBox _txtb = new TextBox();
            _txtb.Text = this.txtControlText.Text.Trim();
            this.pnl1.Controls.Add(_txtb);
        }

        protected void btnAddDdl_Click(object sender, EventArgs e)
        {
            DropDownList _ddl = new DropDownList();
            _ddl.Items.Add(new ListItem("One", "1"));
            _ddl.Items.Add(new ListItem("Two", "2"));
            _ddl.Items.Add(new ListItem("Three", "3"));
            this.pnl1.Controls.Add(_ddl);
        }
    }
}