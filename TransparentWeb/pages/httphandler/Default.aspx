<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="transparent.pages.httphandler.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    <h2>HttpHandlers</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <ul>
        <li><a href="DemoHandler1.ashx" >Basic Handler</a></li>
        <li><a href="ImageHandler.ashx?picname=image1.jpg" >Image Handler</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
