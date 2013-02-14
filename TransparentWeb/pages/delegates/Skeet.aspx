<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Skeet.aspx.cs" Inherits="transparent.pages.delegates.Skeet" Title="Untitled Page" %>
<%@ Register src="../../controls/delegates/Skeet.ascx" tagname="Skeet" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
    <uc1:Skeet ID="Skeet1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
