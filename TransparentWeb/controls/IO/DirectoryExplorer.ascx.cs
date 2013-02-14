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

using System.IO;

namespace transparent.controls.IO {
   public partial class DirectoryExplorer : transparent.include.classes.BaseControl {
      protected void Page_Load(object sender, EventArgs e) {
         if (! Page.IsPostBack){
            populateBrowser();
         }
      }

      private void populateBrowser(){
         DirectoryInfo dirinfo = new DirectoryInfo(Server.MapPath("/demofiles/"));

         TreeNode rootNode = getDirectoryNodes(dirinfo, null);
         
         fbrowser.Nodes.Add(rootNode);
      }

  
      private TreeNode getDirectoryNodes(DirectoryInfo dirinfo, TreeNode rootNode){
         string serverPath=string.Empty;
         
         if (rootNode == null){
            serverPath = @"/";
         }
         else{
            serverPath = rootNode.Value + dirinfo.Name + @"/";
         }
         
         TreeNode retNode = new TreeNode(dirinfo.Name,serverPath);
         DirectoryInfo[] arrDirinfos = dirinfo.GetDirectories();         
         
         foreach(DirectoryInfo di in arrDirinfos)
         {
            if (! di.Name.StartsWith("."))//exclude system/hidden files
            {
               TreeNode node = getDirectoryNodes(di,retNode);
               FileInfo[] arrFiles = di.GetFiles();
               
               foreach(FileInfo f in arrFiles){
                  node.ChildNodes.Add(new TreeNode(f.Name));
               }
  
               retNode.ChildNodes.Add(node); 
            }
         }
         return retNode;
      }
 
   }
}