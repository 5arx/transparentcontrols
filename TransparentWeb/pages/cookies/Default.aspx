<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="transparent.pages.cookies.Default" Title="Untitled Page" %>

<%@ Register Src="~/controls/cookies/CookieDemo.ascx" TagName="CookieDemo" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
    <h1>
        Cookies</h1>
    <div>
        <uc1:CookieDemo ID="CookieDemo1" runat="server"></uc1:CookieDemo>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
