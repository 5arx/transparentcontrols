<%@ Page Title="" Language="C#" Buffer="false" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true" CodeBehind="PageLifeCycle.aspx.cs" Inherits="transparent.pages.lifecycle.PageLifeCycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
<h1>Page Life Cycle</h1>
    <div>
        <asp:Label runat="server" ID="lOut" EnableViewState="false" />
        <br />
        <asp:Button runat="server" id="btn1" text="Click to do a postback" />
    </div>
</asp:Content>
