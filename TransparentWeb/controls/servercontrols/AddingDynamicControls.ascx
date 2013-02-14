<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddingDynamicControls.ascx.cs"
    Inherits="transparent.controls.servercontrols.AddingDynamicControls" %>
<%@ Register src="../../include/ctl/SourceViewer.ascx" tagname="SourceViewer" tagprefix="uc1" %>
<h1>
    Dynamic Control Creation</h1>
<div style="border: 1px solid #ccc;">
    <asp:TextBox runat="server" ID="txtControlText" Text="Enter Control Text" />
    <asp:Button runat="server" ID="btnAddButton" Text="Add Button" OnClick="btnAddButton_Click" />
    <asp:Button runat="server" ID="btnAddTxtBox" Text="Add TextBox" OnClick="btnAddTxtBox_Click" />
    <asp:Button runat="server" ID="btnAddDdl" Text="Add DropDownList" OnClick="btnAddDdl_Click" />
</div>
<asp:Panel runat="server" ID="pnl1" Width="100%" />
<uc1:SourceViewer ID="SourceViewer1" runat="server" />

