<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="transparent.pages.interfaces.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
Interfaces (C#)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
Using Interfaces in C#
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
<p>
    Interfaces are <em>definitions</em> of class behaviour that do not specify
    implementation. As with <a href='http://www.google.com?q=abstract+class+c#' target="_blank">abstract classes</a>, 
    methods are declared (as signatures) but not coded; implementation details are the responsibility of the 
    class that inherits (in Java &lsquo;implements&rsquo;) the interface.</p>

    <p>Some interface demonstrations:</p>
    <ul>
        <li><a href="InterfaceDemo1.aspx">Demo 1</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
