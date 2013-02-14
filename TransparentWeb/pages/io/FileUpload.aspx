<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="transparent.pages.io.FileUpload" Title="Untitled Page" %>
<%@ register src="~/controls/IO/FileUpload.ascx" tagname="FileUpload" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
Uploading Files
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
<h1>Uploading Files</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
   <uc3:fileupload id="FileUpload1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
