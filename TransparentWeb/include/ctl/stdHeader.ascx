<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="stdHeader.ascx.cs" Inherits="transparent.include.ctl.stdHeader" %>
<%@ register src="~/include/ctl/LoginBox.ascx" tagname="Login" tagprefix="uc1" %>
<div id="topmenuDiv">
	<table style='width:100%;' border="1" cellpadding="0" cellspacing="0">
		<tr valign="top">
			<td width="50%">
                <div>
                    <span class='transparentLogo tLogo'>transparentcontrols</span>
                </div>
                <div>
                <span style="display:none;" class='transparentLogo oLogo'><strike>transparent</strike>controls</span>
                   <div>
                        <a class="lhm" id="__AToggleSourceView">Opaque</a>
                        <a class="lhm" id="__AToggleSourceViewer">SourceViewer&trade;</a>
			        </div>
                </div>
            </td>
			<td>
                <div class="loginDiv">
                    <uc1:login id="Login1" runat="server" />
                </div>
			</td>
		</tr>
	</table>
</div>