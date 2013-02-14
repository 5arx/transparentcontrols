<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginBox.ascx.cs" Inherits="transparent.include.ctl.LoginBox" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="sourceviewer" tagprefix="uc1" %>
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $("#divLoginBox").slideUp();
    });
    function ToggleLoginVisi() {
        if ($("#divLoginBox").is('hidden')) {
            $("#divLoginBox").slideDown();
        }
        else {
            $("#divLoginBox").slideUp();
        }
//   if (document.getElementById("divLoginBox").className != 'invisi'){
//      document.getElementById("divLoginBox").className = 'invisi';
//      document.getElementById("LoginBoxTitle").className = 'formLabel';      
//   }
//   else{
//      document.getElementById("divLoginBox").className = 'visi';
//      document.getElementById("LoginBoxTitle").className = 'invisi';      
//   }
}
</script>
<asp:placeholder runat="server" id="DivLoginBox">
    <div>
       <div id="LoginBoxTitle" class="formLabel" style="cursor:pointer;" onclick="ToggleLoginVisi();">Login</div>
       <div id="divLoginBox" class="invisi">
          <table border="0" cellpadding="0" cellspacing="0">
             <tbody>
                <tr valign="top">
                   <td align="right">
                      <label class="formLabel" for="txtUname" title="Enter your email address">Email</label>
                   </td>
                   <td align="left">
                      <asp:textbox id="txtEmail" runat="server" cssclass="formInput" maxlength="50" columns="18" />
                      <asp:requiredfieldvalidator runat="server" id="val1" controltovalidate="txtEmail" errormessage=""
                        enabled="false" enableclientscript="true"
                      Text="*" />
                   </td>
                   <td align="center">
                      <span class="formLabel" onclick="ToggleLoginVisi();">[close]</span>
                   </td>
                </tr>
                <tr>
                   <td align="right">
                      <label class="formLabel" for="txtPswd" title="Enter your password">Password</label>
                   </td>
                   <td align="left">
                      <asp:textbox id="txtPswd" runat="Server" columns="19" cssclass="formInput" maxlength="50"
                         textmode="password">
                      </asp:textbox>
                      <asp:requiredfieldvalidator id="val2" runat="server" controltovalidate="txtPswd"
                         enableclientscript="true" enabled="false" errormessage="" text="*">
                      </asp:requiredfieldvalidator>            
                   </td>
                   <td >
                      <asp:button id="btnLogin" runat="server" cssclass="formButton" onclick="btnLogin_Click"
                         text="login" />
                   </td>            
                </tr>
                <asp:placeholder id="phLoginFail" runat="server" enableviewstate="false" visible="false">
                <tr>
                   <td colspan="3" align="right">
                      <span class="ErrorLbl">Your username and password were not recognised. Please try again.</span>
                   </td>
                </tr>
                </asp:placeholder>
             </tbody>
          </table>
       </div>
    </div>
</asp:placeholder>
<asp:placeholder runat="server" id="DivLoggedIn">
    <asp:label runat="server" id="lUname" />
</asp:placeholder>
               
<uc1:sourceviewer id="SourceViewer1" runat="server" />