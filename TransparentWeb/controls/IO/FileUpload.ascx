<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.ascx.cs" Inherits="transparent.controls.IO.FileUpload" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<asp:label runat="server" id="lOut" />
<br />
   <asp:hyperlink runat="server" id="hlFile" visible="false" target="_blank" />
<br />
<br />
<table class="layoutTbl">
   <tr style="height:5em;">
      <td colspan="2">
         <h4>Select a file to upload</h4>
         <asp:validationsummary runat="server" id="valsummary" font-size="Small" displaymode="bulletList" 
            headertext="Error: please check below and try again." />
      </td>
   </tr>   
   <tr>
      <td>
         <asp:fileupload id="Uploader" runat="server" cssclass="formInput" />
         <asp:customvalidator runat="server" id="valUpload" onservervalidate="Uploader_Validate" 
            errormessage="Please select a file to upload" Text="*" />
      </td>
      <td>
         <asp:button id="btnPost" runat="server" onclick="btnPost_Click" text="Upload" />
      </td>
   </tr>
</table>
<uc2:sourceviewer id="SourceViewer1" runat="server" />
