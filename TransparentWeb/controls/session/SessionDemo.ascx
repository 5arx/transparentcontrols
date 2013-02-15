<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SessionDemo.ascx.cs" Inherits="transparent.controls.session.SessionDemo" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="sourceviewer" tagprefix="uc1" %>
<div style="text-align: center; width: 100%;">
   <table border="0" width="80%" cellpadding="10" cellspacing="6" style="text-align: left;">
      <tbody>
         <tr valign="top">
            <td colspan="1">
               <h4>
                  Set Session Variables</h4>
               <table border="0" width="30%" cellpadding="0" cellspacing="0">
                  <tbody>
                     <tr>
                        <td>
                           <label class="formLabel" for="txtSessionName">
                              Namerr</label>
                        </td>
                        <td>
                           <asp:textbox id="txtName" runat="server" cssclass="formInput" enableviewstate="false">
                           </asp:textbox>
                        </td>
                     </tr>
                     <tr valign="top">
                        <td>
                           <label class="formLabel" for="txtSessionName">
                              Value</label>
                        </td>
                        <td>
                           <asp:textbox id="txtValue" runat="server" cssclass="formInput" enableviewstate="false">
                           </asp:textbox>
                        </td>
                     </tr>
                     <tr>
                        <td align="right" colspan="2">
                           <asp:button id="btnAddSession" runat="server" cssclass="btn" onclick="btnAddSession_Click"
                              text="Add Session Variable" />
                        </td>
                        <td>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </td>
            <td>
               &nbsp;</td>
            <td>
               <h4>
                  Delete Session Variables</h4>
               <asp:placeholder id="phnoSessions" runat="server">
                  <p style="text-align: left;">
                     No Session variables set.</p>
               </asp:placeholder>
               <asp:listbox id="lbSessions" runat="server" tooltip="Current Session Variables"></asp:listbox>
               <br />
               <div style="text-align: right;">
                  <asp:button id="btnDelSession" runat="server" cssclass="btn" onclick="btnDelSession_Click"
                     text="Delete Session" />
               </div>
            </td>
         </tr>
      </tbody>
   </table>
   <uc1:sourceviewer id="SourceViewer1" runat="server" />
</div>
