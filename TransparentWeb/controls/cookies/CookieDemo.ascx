<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CookieDemo.ascx.cs" Inherits="transparent.controls.cookies.CookieDemo" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<div style="text-align:center; width:100%;">
   <table border="0" cellpadding="10" cellspacing="6" style="text-align:left;">
      <tbody>
      <tr valign="top">
         <td colspan="1">
            <h4>Set a Cookie</h4>
            <table border="0" cellpadding="0" cellspacing="0">
               <tbody>
                  <tr>
                     <td>
                        <label class="formLabel" for="txtCookieName">
                           Name</label>
                     </td>
                     <td>
                        <asp:textbox id="txtName" runat="server" cssclass="formInput" enableviewstate="false">
                        </asp:textbox>
                     </td>
                  </tr>
                  <tr valign="top">
                     <td>
                        <label class="formLabel" for="txtCookieName">
                           Value</label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtValue" runat="server" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                     <td><label for="calchbx" class="formLabel">Set Expiry</label></td>
                     <td>
                        <asp:checkbox runat="server" id="calchbx" />
                     </td>
                  </tr>
                  <tr valign="top">
                     <td>
                        <label for="cal" class="formLabel">Expires</label>
                     </td>
                     <td>
                        <asp:calendar runat="server" id="cal" cssclass="formLabel" />
                     </td>
                  </tr>
                  <tr>
                     <td align="right" colspan="2">
                        <asp:button id="btnAddCookie" runat="server" cssclass="btn" onclick="btnAddCookie_Click"
                           text="Add Cookie" />
                     </td>
                     <td>
                     </td>
                  </tr>
               </tbody>
            </table>      
         </td>
         <td>&nbsp;</td>
         <td>
            <h4>Delete a Cookie</h4>
            <asp:placeholder id="phnocookies" runat="server">
               <p style="text-align:left;">
                  No Cookies Set.</p>
            </asp:placeholder>
            <asp:listbox id="lbCookies" runat="server"></asp:listbox>
            <br />
            <div style="text-align:right;">
               <asp:button id="btnDelCookie" runat="server" onclick="btnDelCookie_Click" 
                  cssclass="btn"
                  text="Delete Cookie"/>
            </div>
         </td>
      </tr>
      </tbody>
   </table>
   <uc2:sourceviewer id="SourceViewer1" runat="server" />
</div>
