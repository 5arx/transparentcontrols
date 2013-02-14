<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="ThePageHeader.aspx.cs" Inherits="transparent.pages.response.ThePageHeader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
    <h1>
        The Page Header</h1>
    <p>
        By default Visual Studio makes the HtmlHead tag <code>runat=&quot;server&quot;</code>.
        By accessing this object it is possible to modify the following HTML properties:
        <ul>
            <li>Title - the title of the page as displayed in the browser title bar.</li>
            <li>Stylesheet - provides an IStyleSheet object which may be used to create new style
                rules using <code>CreateStyleRule()</code> and <code>RegisterStyleRule()</code>.</li>
            <li>Controls - you can add/remove metadata tags programmatically using the HtmlMeta
                class.<em>Useful for CMS pages etc.</em></li>
        </ul>
    </p>
    <p>
        View the source of this page to view the dynamically created header values.</p>
</asp:Content>
