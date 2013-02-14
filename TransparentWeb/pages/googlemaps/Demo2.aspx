<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Demo2.aspx.cs" Inherits="transparent.pages.googlemaps.Demo2" %>

<%@ Register Src="../../controls/googlemaps/GoogleDemo2.ascx" TagName="GoogleDemo2"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Google Maps API :: Demo 2 - Directions
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Google Maps API 1
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <uc1:GoogleDemo2 ID="GoogleDemo21" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
