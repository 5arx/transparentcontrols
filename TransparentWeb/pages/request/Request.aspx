<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Request.aspx.cs" Inherits="transparent.pages.request.Request" %>

<%@ Register Src="../../controls/request/ServerVariables.ascx" TagName="ServerVariables"
    TagPrefix="uc1" %>
<%@ Register src="../../controls/request/Path.ascx" tagname="Path" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMainBody" runat="server">
    <h1>Request Object</h1>
    <div>
        <asp:Label runat="server" ID="lOut" />
    </div>
    <uc1:ServerVariables ID="ServerVariables1" runat="server" />

    <uc2:Path ID="Path1" runat="server" />

</asp:Content>
