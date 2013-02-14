<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="DirectoryExplorer.aspx.cs" Inherits="transparent.pages.io.DirectoryExplorer" Title="Untitled Page" %>
<%@ register src="~/controls/IO/DirectoryExplorer.ascx" tagname="DirectoryExplorer" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
<h1>Directory Browser</h1>
<span runat="server" id="spanSource" />
   <uc1:directoryexplorer id="DirectoryExplorer1" runat="server" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
