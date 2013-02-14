using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.IO;
namespace transparent.pages.reflection
{
    public partial class ClassExplorer : System.Web.UI.Page
    {
        System.Text.StringBuilder _sb;

        protected void Page_Init(object sender, EventArgs e){
            this.rptTypes.ItemDataBound += new RepeaterItemEventHandler(rptTypes_ItemDataBound);
        }

        void rptTypes_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem){
                Type t = ((Type)e.Item.DataItem);

                _sb.Append(string.Format("<p><strong>{0}</strong></p>", t.FullName));
                MethodInfo[] methods = ((Type)e.Item.DataItem).GetMethods();

                foreach (MethodInfo methinf in methods.OrderBy(x => x.Name))
                {
                    _sb.Append(methinf.IsPublic ? "<p>public " : string.Empty);
                    _sb.Append(methinf.IsStatic ? "static " : string.Empty);
                    _sb.Append(methinf.IsAbstract ? "abstract " : string.Empty);
                    _sb.Append(methinf.IsFinal ? "final " : string.Empty);
                    _sb.Append(" " + methinf.ReturnType.Name + " ");
                    _sb.Append(methinf.Name + @" {<br/>");

                    _sb.Append("}</p>");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                buildGui();
            }
        }

        private void buildGui()
        {

            //ddlClasses
            ListItem li;

            
            //Assembly a = Assembly.LoadFile(@"C:\work\code\TransparentControls\TransparentWeb\bin\transparentControls.dll");
            Assembly a = Assembly.LoadFile(Path.Combine(Server.MapPath("/bin/"), "transparentControls.dll"));
            foreach (Type t in a.GetTypes().OrderBy(c => c.AssemblyQualifiedName))
            {
                li = new ListItem(t.FullName, t.FullName);
                ddlClasses.Items.Add(li);

            }
            ddlClasses.Items.Insert(0, new ListItem("Select class ..."));
        }


        #region Events

        private string getAssemblyLocation(HttpPostedFile file)
        {
            string _tmpName = Server.MapPath(Path.Combine(ConfigurationManager.AppSettings["uploadDir"],
                                                            System.Guid.NewGuid() + file.FileName)
                                                            );
            file.SaveAs(_tmpName);
            litOut.Text += "<p>&lt;&lt;Saved file as " + _tmpName;
            return _tmpName;

        }


        protected void btnExplore_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {

                    string _assemblyloc = getAssemblyLocation(uploadAssembly.PostedFile);
                    Assembly a = Assembly.LoadFile(_assemblyloc);

                    //Assembly a = Assembly.LoadFile(@"C:\work\code\TransparentControls\TransparentWeb\bin\transparentControls.dll");
                    //a = //this.GetType().Assembly;
                    _sb = new System.Text.StringBuilder();

                    foreach (Type t in a.GetTypes())
                    {
                        _sb.Append(string.Format("<p><strong>{0}</strong></p>", t.FullName));
                        MethodInfo[] methods = t.GetMethods();
                     
                        foreach (MethodInfo methinf in methods.OrderBy(x => x.Name))
                        {
                            _sb.Append(methinf.IsPublic ? "<p>public " : string.Empty);
                            _sb.Append(methinf.IsStatic ? "static " : string.Empty);
                            _sb.Append(methinf.IsAbstract ? "abstract " : string.Empty);
                            _sb.Append(methinf.IsFinal ? "final " : string.Empty);
                            _sb.Append(" " + methinf.ReturnType.Name + " ");
                            _sb.Append(methinf.Name + @" {<br/>");

                            _sb.Append("}</p>");
                        }
                    }
                    this.rptTypes.DataSource = a.GetTypes();
                    rptTypes.DataBind();

                    //this.litOut.Text = _sb.ToString();
                }
                catch (Exception ex)
                {
                    litOut.Text += ex.Message;
                }
            }
        }
        #endregion

        protected void valUpload_ServerValidate(object source, ServerValidateEventArgs args)
        {
            HttpPostedFile f = uploadAssembly.PostedFile;

            if (f == null || f.ContentLength < 1)
            {
                args.IsValid = false;
            }

            args.IsValid = true;
        }
    }
}