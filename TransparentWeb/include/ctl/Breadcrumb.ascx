<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Breadcrumb.ascx.cs" Inherits="transparent.include.ctl.Breadcrumb" %>
<%@ OutputCache Duration="120" VaryByParam="none" %>
<asp:Repeater runat="server" ID="rptCrumbs" onitemdatabound="rptCrumbs_ItemDatabound">
    <HeaderTemplate>
        <ul class="breadcrumb">
    </HeaderTemplate>
    <ItemTemplate><li><a runat="server" id="a_crumb" ><%# Container.DataItem.ToString().Trim() %></a></li><span class="divider">/</span></ItemTemplate>
    <FooterTemplate>
    </ul>
    </FooterTemplate>
</asp:Repeater>
<asp:Label runat="server" ID="lout" />