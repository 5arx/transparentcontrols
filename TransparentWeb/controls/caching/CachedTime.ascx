<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CachedTime.ascx.cs" Inherits="transparent.controls.caching.CachedTime" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<div>
    Time: <asp:Literal runat="server" ID="litTime" />
</div>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
