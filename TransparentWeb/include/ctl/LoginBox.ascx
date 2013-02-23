<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginBox.ascx.cs" Inherits="transparent.include.ctl.LoginBox" %>
<%@ Register Src="~/include/ctl/SourceViewer.ascx" TagName="sourceviewer" TagPrefix="uc1" %>
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
    }
</script>
<asp:PlaceHolder runat="server" ID="DivLoginBox">
    <div>
        <div id="LoginBoxTitle" class="formLabel" style="cursor: pointer;" onclick="ToggleLoginVisi();">Login</div>
        <div id="divLoginBox" class="invisi hide">
            <table border="0" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr valign="top">
                        <td align="right">
                            <label class="formLabel" for="txtUname" title="Enter your email address">Email</label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="formInput" MaxLength="50" Columns="18" />
                            <asp:RequiredFieldValidator runat="server" ID="val1" ControlToValidate="txtEmail" ErrorMessage=""
                                Enabled="false" EnableClientScript="true"
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
                            <asp:TextBox ID="txtPswd" runat="Server" Columns="19" CssClass="formInput" MaxLength="50"
                                TextMode="password">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="val2" runat="server" ControlToValidate="txtPswd"
                                EnableClientScript="true" Enabled="false" ErrorMessage="" Text="*">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="btnLogin" runat="server" CssClass="btn" OnClick="btnLogin_Click"
                                Text="login" />
                        </td>
                    </tr>
                    <asp:PlaceHolder ID="phLoginFail" runat="server" EnableViewState="false" Visible="false">
                        <tr>
                            <td colspan="3" align="right">
                                <span class="ErrorLbl">Your username and password were not recognised. Please try again.</span>
                            </td>
                        </tr>
                    </asp:PlaceHolder>
                </tbody>
            </table>
        </div>
    </div>
</asp:PlaceHolder>
<asp:PlaceHolder runat="server" ID="DivLoggedIn">
    <asp:Label runat="server" ID="lUname" />
</asp:PlaceHolder>

<uc1:sourceviewer ID="SourceViewer1" runat="server" />
