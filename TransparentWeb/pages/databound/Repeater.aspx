<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="transparent.pages.databound.Repeater" %>
<%@ Register src="../../controls/databound/Repeater.ascx" tagname="Repeater" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
<h2>Repeater</h2>
<uc1:Repeater ID="Repeater1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
