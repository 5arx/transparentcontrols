<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServerVariables.ascx.cs" Inherits="transparent.controls.request.ServerVariables" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<h2>Request.Params</h2>
<p class=""><asp:Label runat="server" id="lOut" CssClass="body" /></p>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
