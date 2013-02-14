<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Path.ascx.cs" Inherits="transparent.controls.request.Path" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<asp:Repeater runat="server" ID="rptRequestPath">
    <HeaderTemplate>
        <h2>
            Request.Path-related</h2>
    </HeaderTemplate>
    <ItemTemplate>
        <p>
            <strong>
                <%# Eval("key") %></strong><br />
            <%# Eval("value") %>
        </p>
    </ItemTemplate>
</asp:Repeater>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />

