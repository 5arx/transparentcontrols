<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl.ascx.cs" Inherits="transparent.controls.usercontrols.UserControl" %>
<%@ register src="~/include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc2" %>
<h2>Web User Control</h2>
<asp:Label runat="server" ID="lOut" />
<uc2:sourceviewer id="SourceViewer1" runat="server" />