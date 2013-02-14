<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="transparent.pages.LINQ.Default" %>

<%@ Register Src="../../controls/LINQ/Linq1.ascx" TagName="Linq1" TagPrefix="uc1" %>
<%@ Register Src="../../controls/LINQ/Linq2.ascx" TagName="Linq2" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <h2>
        LINQ</h2>
    <p>
        LINQ (Language Integrated Natural Query) is a new paradigm for abstracting and working
        with collections of data from filesystems to raw data in ADO.Net datasets and collections
        of objects.
    </p>
    <uc1:Linq1 ID="Linq11" runat="server" />
    <uc2:Linq2 ID="Linq21" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
