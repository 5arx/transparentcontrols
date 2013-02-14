<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="IntegUserControl.aspx.cs" Inherits="transparent.pages.userControls.IntegUserControl" Title="Untitled Page" %>

<%@ Register Src="../../controls/usercontrols/IntegUserControl.ascx" TagName="IntegUserControl"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
Integrated User Control
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
<h1>Integrated User Control</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <p>This page houses an integrated user control which generates the footer of this page.</p>
    <p>To set the date format of the footer, please select from the radiobuttons below.</p>

    <asp:RadioButtonList runat="server" id="rbFooterFormat" CssClass="formInput" AutoPostBack="true">
        <asp:ListItem Text="Short Format" Value="short" />
        <asp:ListItem Text="Long Format" Value="long" />
        <asp:ListItem Text="Ticks" Value="ticks" />
        <asp:ListItem Text="Universal Time" Value="utc" />
    </asp:RadioButtonList>
    
    <br /><br /><br />
    
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
<uc1:IntegUserControl ID="IntegUserControl1" runat="server" />
</asp:Content>
