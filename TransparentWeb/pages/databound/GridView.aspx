<%@ Page Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="transparent.pages.databound.GridView" Title="Untitled Page" %>
<%@ Register src="~/controls/databound/GridView.ascx" tagname="GridView" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <uc3:GridView id="GridView1" runat="server">
    </uc3:GridView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
