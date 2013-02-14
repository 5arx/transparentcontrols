<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="FragmentCaching.aspx.cs" Inherits="transparent.pages.caching.FragmentCaching" %>

<%@ Register Src="~/controls/caching/Time.ascx" TagName="Time" TagPrefix="uc1" %>
<%@ Register Src="~/controls/caching/CachedTime.ascx" TagName="CachedTime" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Fragment Caching
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Fragment Caching
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <p>
        Fragment caching is based on <a href="OutputCaching.aspx">Output Caching</a> but
        instead of the entire page being cached, parts that are suitable for caching are
        isolated and built as user controls.</p>
    <p>
        This page contains a user control whose output (server time) is cached for 10 seconds.
        It also includes a second time control that is not cached.</p>
    <p>
        <strong>Cached time control:</strong>
        <uc2:CachedTime ID="CachedTime1" runat="server" />
    </p>
    <p>
        <strong>Non-Cached time control:</strong>
        <uc1:Time ID="Time1" runat="server" />
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
