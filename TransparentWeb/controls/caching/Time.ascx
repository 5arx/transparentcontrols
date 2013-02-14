<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Time.ascx.cs" Inherits="transparent.controls.caching.Time" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<p>
    Time: <asp:Literal runat="server" ID="litTime" />
</p>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />
