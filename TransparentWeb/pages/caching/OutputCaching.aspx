<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="OutputCaching.aspx.cs" Inherits="transparent.pages.caching.OutputCaching" %>
<%@ OutputCache Duration="10" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Output Caching
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Output Caching
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <p>
        <strong>Output caching</strong> is the simplest type of caching. It stores a copy
        of the final rendered HTML page that is sent to the client. The next client that
        submits a request for this page doesn’t actually run the page. Instead, the final
        HTML output is sent automatically. The time that would have been required to run
        the page and its code is completely reclaimed.
    </p>
    <p>
        This page has the output cache directive set:</p>
    <p>
        <code>&lt;@ OutputCache Duration=&quot;10&quot; VaryByParam=&quot;None&quot; &gt;</code>
        This instructs ASP.Net to cache the <em>output</em> of the page for 10 seconds. After 
        ten seconds have passed the server will execute the page code again and cache the output for 
        another ten seconds.
    </p>
    <p>
        <strong>Page Time:</strong><asp:Literal runat="server" ID="litTime" />
    </p>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
