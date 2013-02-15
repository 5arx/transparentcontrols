<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileIO.ascx.cs" Inherits="transparent.controls.IO.FileIO" %>
 <%@ register src="~/include/ctl/SourceViewer.ascx" tagname="sourceviewer" tagprefix="uc1" %>
 <h1>File I/O</h1>
   <table border="0" width="100%">
      <asp:placeholder runat="server" id="phLout" visible="false">
      <tr>
         <td colspan="2">
            <span class="ErrorMsg">Oops!</span>
            <br />
            <asp:label runat="server" id="lOut" cssclass="ErrorLbl" />c
         </td>
      </tr>
      </asp:placeholder>
      <tr valign="top">
         <td>
            <p>
               Write some text to a file.</p>
            <asp:textbox id="txtWriteToFile" runat="server" columns="40" rows="6" textmode="multiLine">
            </asp:textbox>
            <label for="txtWriteToFile">
            <br />
               <asp:requiredfieldvalidator id="valTxt" runat="server" controltovalidate="txtWriteToFile"
                  errormessage="Please enter some text" text="Please enter some text" cssclass="ErrorLbl">
               </asp:requiredfieldvalidator>
            </label>
            <p>
               <asp:textbox id="txtFilename" runat="server" textmode="singleline">
               </asp:textbox>
               <label for="txtFileName">
                  Filename (enter a new filename to save as a new file)</label>
               <br />
               <asp:requiredfieldvalidator id="valfilename" runat="server" controltovalidate="txtFileName"
                  cssclass="" text="Can't save without a filename" />
            </p>
            <p>
               <asp:button CssClass="btn" id="btnWriteToFile" runat="server" onclick="btnWriteToFile_Click" text="Write to File" />
            </p>
         </td>
         <td>
            <p>
               Choose a file to read its contents:</p>
            <asp:dropdownlist id="lbFiles" runat="server" autopostback="true" enableviewstate="true"
               onselectedindexchanged="lbFiles_SelectedIndexChanged">
            </asp:dropdownlist>
         </td>
      </tr>
   </table>
<uc1:sourceviewer id="SourceViewer1" runat="server" />