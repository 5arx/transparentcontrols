<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PagesInCurrentFolder.ascx.cs" Inherits="transparent.include.ctl.PagesInCurrentFolder" %>
<%@ OutputCache Duration="120" VaryByParam="none" %>
<asp:Repeater runat="server" ID="rptFiles" OnItemDataBound="rptFiles_ItemDataBound">
    <HeaderTemplate>
        <div id="divDirMenuFiles">
            <span class="" >In this Section</span>
            <br />
    </HeaderTemplate>
    <ItemTemplate>
        <a class="lhm" runat="server" id="hlPage"><%# Eval("Name") %></a>&nbsp;
    </ItemTemplate>
    <FooterTemplate>
            <br />
        </div>
    </FooterTemplate>
</asp:Repeater>
