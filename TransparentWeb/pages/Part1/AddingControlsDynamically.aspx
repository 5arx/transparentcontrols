<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/main.Master" AutoEventWireup="true" CodeBehind="AddingControlsDynamically.aspx.cs" Inherits="ProASP3_5.Part1.AddingControlsDynamically" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Dynamic Control Creation</h1>
    <div style="border:1px solid #ccc;">
<asp:TextBox runat="server" ID="txtControlText" Text="Enter Control Text" />
<asp:Button runat="server" ID="btnAddButton" Text="Add Button" 
        onclick="btnAddButton_Click" />
<asp:Button runat="server" ID="btnAddTxtBox" Text="Add TextBox" 
        onclick="btnAddTxtBox_Click" />
<asp:Button runat="server" ID="btnAddDdl" Text="Add DropDownList" 
        onclick="btnAddDdl_Click" />
        </div>
        <asp:Panel runat="server" ID="pnl1" Width="100%" />
</asp:Content>

