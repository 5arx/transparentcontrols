<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Breadcrumb.ascx.cs" Inherits="transparent.include.ctl.Breadcrumb" %>
<%@ OutputCache Duration="120" VaryByParam="none" %>
<asp:Repeater runat="server" ID="rptCrumbs" onitemdatabound="rptCrumbs_ItemDatabound">
    <HeaderTemplate>
        <div style="text-align:left;color:#ff6600;font-size:9px;">
    </HeaderTemplate>
    <ItemTemplate><a runat="server" class='aCrumb' id="a_crumb" ><%# Container.DataItem.ToString().Trim() %></a>&nbsp;&gt;&nbsp;</ItemTemplate>
    <FooterTemplate>
    </div>
    </FooterTemplate>
</asp:Repeater>
<asp:Label runat="server" ID="lout" />