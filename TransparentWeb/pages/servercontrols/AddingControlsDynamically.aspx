<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="AddingControlsDynamically.aspx.cs" Inherits="transparent.pages.servercontrols.AddingControlsDynamically" %>
<%@ Register src="../../controls/servercontrols/AddingDynamicControls.ascx" tagname="AddingDynamicControls" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
    <uc1:AddingDynamicControls ID="AddingDynamicControls1" runat="server" />
    </asp:Content>