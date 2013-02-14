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
using ThinkatronicUtils;

namespace transparent.controls.IO
{
    public partial class FileIO : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateFileBox();
            }
        }
        protected void WriteTextBoxToFile()
        {
            try
            {
                FileUtils.TextToFile(Server.MapPath(AppConfig("demofiledir")) + txtFilename.Text, txtWriteToFile.Text);
            }
            catch (Exception ex)
            {
                this.phLout.Visible = true;
                this.lOut.Text = @"An error occurred on attempting to save the file:<br/>" + ex.Message;
            }
        }

        protected void btnWriteToFile_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                WriteTextBoxToFile();
                populateFileBox();
            }
        }

        private void populateFileBox()
        {
            lbFiles.Items.Clear();
            string[] arrFiles = FileUtils.GetFilesInFolder(Server.MapPath(AppConfig("demofileDir")));
            foreach (string fname in arrFiles)
            {
                lbFiles.Items.Add(new ListItem(System.IO.Path.GetFileName(fname), fname));
            }
            lbFiles.Items.Insert(0, new ListItem("- select -", ""));
        }


        protected void lbFiles_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.txtWriteToFile.Text = FileUtils.FileToText(Server.MapPath(AppConfig("demofiledir")) + lbFiles.SelectedItem.Text);
            this.txtFilename.Text = lbFiles.SelectedItem.Text;
        }
    }
}