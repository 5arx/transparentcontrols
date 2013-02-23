<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DirectoryMenuer.ascx.cs"
    Inherits="transparent.include.ctl.DirectoryMenuer" %>
<%@ Register Src="SourceViewer.ascx" TagName="SourceViewer" TagPrefix="uc1" %>
<%@ OutputCache Duration="120" VaryByControl="true" %>
<div id="divDirMenu">
    <asp:ImageButton runat="server" OnClick="btnUp_Click" ID="btnUp" BorderStyle="Double"
        ImageUrl="/include/img/up.jpg" />
    <asp:Repeater runat="server" ID="rptFiles" OnItemDataBound="rptFiles_ItemDataBound">
        <HeaderTemplate>
            <div id="divDirMenuFiles">
                <ul id="FileListUL" class="nav nav-list">
                    <li class="nav-header">Examples</li>
        </HeaderTemplate>
        <FooterTemplate>
                </ul>
            </div>
        </FooterTemplate>
        <ItemTemplate>
            <li>
                <a runat="server" id="hlPage"><%# Eval("Name") %></a>
            </li>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater runat="server" ID="rptFolders" OnItemDataBound="rptFolders_ItemDataBound">
        <HeaderTemplate>
            <div>
                <span id="lhmHeaderSubs" class="lhmHeader nav-header" title="click to hide">Sub-Sections</span>
                <div id="divDirMenuFolders">
                    <ul id="DirectoryListUL" class="nav nav-list">
        </HeaderTemplate>
        <ItemTemplate>
                    <li>
                        <asp:HyperLink runat="server" ID="hlPage" Text='<%# Eval("Name") %>' />
                    </li>
        </ItemTemplate>
        <FooterTemplate>
                    </ul>
                </div>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <br />
</div>
<uc1:SourceViewer ID="SourceViewer1" runat="server" />