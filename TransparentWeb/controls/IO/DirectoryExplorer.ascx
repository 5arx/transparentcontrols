<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DirectoryExplorer.ascx.cs" Inherits="transparent.controls.IO.DirectoryExplorer" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>

<div style="text-align: center; width: 100%; height:250px; overflow:auto;">
   <table border="0" cellpadding="0" cellspacing="0" style="text-align: left;">
      <tbody>
         <tr valign="top">
            <td>
               <asp:treeview runat="server" id="fbrowser" showlines="true"/> 
            </td>
            <td>
               <h5>View File</h5>
               <asp:textbox id="txtViewPane" runat="server" borderwidth="0" text="the quick brown fox jumps over the lazy dog. the quick brown fox jumps over the lazy dog."
                  textmode="multiLine" width="100%">
               </asp:textbox>
            
            </td>
         </tr>
      </tbody>
      </tbody>
   </table>
</div>
<uc2:sourceviewer id="SourceViewer1" runat="server" />
