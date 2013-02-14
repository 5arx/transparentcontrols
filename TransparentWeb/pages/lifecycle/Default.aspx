<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="transparent.pages.lifecycle.Default" Title="Untitled Page" trace="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
<h2>Page Lifecycle</h2>

<asp:label runat="server" id="lOut" width="100%" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
