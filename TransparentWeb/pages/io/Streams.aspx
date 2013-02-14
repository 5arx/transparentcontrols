<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="Streams.aspx.cs" Inherits="transparent.pages.io.Streams" Title="Untitled Page" %>
<%@ register src="~/controls/IO/Streams.ascx" tagname="Streams" tagprefix="uc1" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
   <uc1:streams id="Streams1" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
