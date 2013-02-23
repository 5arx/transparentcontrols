<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="stdHeader.ascx.cs" Inherits="transparent.include.ctl.stdHeader" %>
<%@ Register Src="~/include/ctl/LoginBox.ascx" TagName="Login" TagPrefix="uc1" %>

<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#"><span class='transparentLogo tLogo'>transparentcontrols</span></a>
        <ul class="nav">
            <li class="active"><a href="#" id="__AToggleSourceViewer">SourceViewer&trade;</a></li>
            <li><a href="#" id="__AToggleSourceView">Opaque</a></li>
            <li><a href="#">
                <uc1:Login ID="Login1" runat="server" />
            </a></li>
        </ul>
    </div>
</div>