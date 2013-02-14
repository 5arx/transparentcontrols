<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="transparent.pages.userControls.Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
User and Custom Controls
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
<h1>User and Custom Controls</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
<ul>
    <li>
        <a href="UserControl.aspx">User Control</a>
    </li>
    <li>
        <a href="IntegUserControl.aspx">Integrated User Control</a>&nbsp;<span>[IUCs interact with their parent page]</span>    
    </li>
</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
