<%@ Page Title="" Language="C#" Buffer="false" MasterPageFile="~/include/master/main.Master" AutoEventWireup="true" CodeBehind="PageLifeCycle.aspx.cs" Inherits="ProASP3_5.Part1.PageLifeCycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Page Life Cycle</h1>
    <div>
        <asp:Label runat="server" ID="lOut" EnableViewState="false" />
        <br />
        <asp:Button runat="server" id="btn1" text="Click to do a postback" />
    </div>
</asp:Content>
