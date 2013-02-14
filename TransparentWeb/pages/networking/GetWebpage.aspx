<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="GetWebpage.aspx.cs" Inherits="transparent.pages.networking.GetWebpage" Title="Get Webpage" EnableEventValidation="false" %>

<%@ register src="~/controls/networking/GetWebpage.ascx" tagname="scraper" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phMainBody" runat="server">
   <uc2:scraper id="scraper1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
