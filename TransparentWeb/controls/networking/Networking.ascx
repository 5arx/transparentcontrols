<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Networking.ascx.cs" Inherits="transparent.controls.networking.Networking" %>
<%@ Register Src="GetWebpage.ascx" TagName="GetWebpage" TagPrefix="uc1" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<div style="text-align: center; width: 100%;">
   <table border="1" cellpadding="0" cellspacing="0" style="text-align: left;">
      <tbody>
         <tr valign="top">
            <td >
                <ul>
                   <li><a href="/pages/networking/GetWebpage.aspx">Get Webpage via Network</a></li>
                   <li><a href="/pages/networking/GetPost.aspx">Get/Post</a></li>
                </ul>
            </td>
         </tr>
      </tbody>
   </table>
</div>

<uc2:sourceviewer id="SourceViewer1" runat="server" />