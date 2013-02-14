<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="UserControl.aspx.cs" Inherits="transparent.pages.userControls.UserControl" Title="Untitled Page" %>

<%@ Register Src="../../controls/usercontrols/UserControl.ascx" TagName="UserControl"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
User Control
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
<h1>User Control</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <uc1:UserControl ID="UserControl1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
