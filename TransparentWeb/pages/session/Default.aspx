<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="transparent.pages.session.Default" Title="Untitled Page" %>
<%@ register src="~/controls/session/SessionDemo.ascx" tagname="SessionDemo" tagprefix="uc0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
<h1>Session</h1>
   <uc0:sessiondemo id="SessionDemoCtl" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
