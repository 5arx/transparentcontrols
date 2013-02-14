<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="PageControlTree.aspx.cs" Inherits="transparent.pages.lifecycle.PageControlTree" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
    <div>
    <h1>Page Control Tree</h1>
    <p>Some static description of what this page shows.</p>
    <asp:TextBox runat="server" id="txt1" width="30" />
    <br />
    <asp:Button runat="server" id="btn1" text="click" />
    <br />
    <asp:DropDownList runat="server" id="ddl1">
        <asp:ListItem value="0">0</asp:ListItem>
    </asp:DropDownList>
    <p>This is a paragraph of static text in a &lt;p&gt; tag.</p>
    <asp:Panel runat="server" id="pnl1">
        <asp:Label runat="server" id="lbl2" text="This is an ASP:Label control" BorderWidth="1" />
        <br />
        <asp:Button runat="server" id="btn2" text="Button 2" />
    </asp:Panel>
    </div>
    <div>
        <h5>Recursively listing Page controls</h5>
        <asp:Label runat="server" id="lOut" />
    </div>
</asp:Content>
