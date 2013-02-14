<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="DataCaching.aspx.cs" Inherits="transparent.pages.caching.DataCaching" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Data Caching
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Data Caching
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <p>
        <strong>Data caching</strong> is carried out manually in your code. To use
        data caching, you store important pieces of information that are time-consuming
        to reconstruct (such as a DataSet retrieved from a database) in the cache. Other
        pages can check for the existence of this information and use it, thereby bypassing
        the steps ordinarily required to retrieve it.
    </p>
    <p>Data caching is conceptually the same
        as using application state, but it’s much more server- friendly because items will
        be removed from the cache automatically when it grows too large and performance
        could be affected. Items can also be set to expire automatically.
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
