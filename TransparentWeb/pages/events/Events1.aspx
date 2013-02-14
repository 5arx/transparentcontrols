<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Events1.aspx.cs" Inherits="transparent.pages.events.Events1" %>

<%@ Import Namespace="transparent.controls.events" %>
<%@ Register src="../../controls/events/Events1.ascx" tagname="Events1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
    Events 1
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Events 1
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <div style="border: 1px solid #fff; padding: 1em; text-align: center;">
        <uc1:Events1 ID="EventsDemo1" runat="server" />
        <asp:Label runat="server" ID="lOut" />
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
